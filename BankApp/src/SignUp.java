import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.bo.CustomerBO;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
                

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                                String name = request.getParameter("Name");
                                String email = request.getParameter("Email");
                                String pwd = request.getParameter("Password");
                                String cnfPwd = request.getParameter("Confirm");
                                String address = request.getParameter("Address");
                                String dob = request.getParameter("DOB");
                                String phone = request.getParameter("Phone");
                                
                                if (!pwd.equals(cnfPwd)){
                                                System.out.println("Passwords do not match.");
                                                redirectToSignUp(request, response, "Passwords do not match.");
                                                return;
                                }
                                
                                /*if (phone.length()!=10){
                                                System.out.println("Phone number invalid.");
                                                redirectToSignUp(request, response, "Phone number invalid.");
                                }*/
                                
                                try {
                                                CustomerBO customerBO = new CustomerBO();
                                                
                                                long accno = customerBO.createCustomer(name, email, pwd, address, dob, Long.parseLong(phone), 0.0, "");
                                                System.out.println("accno "+accno);
                                                
                                                if (accno==0){
                                                                redirectToSignUp(request, response, "There was an unexpected error.");
                                                }
                                                else{
                                                                request.setAttribute("message", "Your account number is "+accno);
                                                                redirectToLogin(request, response);
                                                }
                                } catch (ClassNotFoundException e) {
                                                e.printStackTrace();
                                } catch (SQLException e) {                             
                                                e.printStackTrace();
                                } catch (NumberFormatException e) {
                                                // TODO Auto-generated catch block
                                                e.printStackTrace();
                                } catch (NamingException e) {
                                                // TODO Auto-generated catch block
                                                e.printStackTrace();
                                }
                }
                
                public void redirectToSignUp(HttpServletRequest request, HttpServletResponse response, String errorMessage) {
                                try {
                                                request.setAttribute("message", errorMessage);
                                                request.getRequestDispatcher("SignUp.jsp").forward(request, response);
                                                
                                } catch (IOException e) {
                                                e.printStackTrace();
                                } catch (ServletException e) {
                                                e.printStackTrace();
                                }
                }

                public void redirectToLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                                request.getRequestDispatcher("LoginClassify.jsp").forward(request, response);
                }
}
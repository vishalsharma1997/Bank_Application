import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.bo.CustomerBO;
import com.app.entity.Customer;

/**
* Servlet implementation class Login
*/
@WebServlet("/Login")
public class Login extends HttpServlet {
                private static final long serialVersionUID = 1L;
  
                protected void doPost(HttpServletRequest request, HttpServletResponse response){
                                String email = request.getParameter("email");
                                String password = request.getParameter("password");
                                long accountno = Long.parseLong(request.getParameter("accountno"));
                                
                                HttpSession session = request.getSession();
                                session.setAttribute("accno", accountno);
                                
                                CustomerBO customerBO = new CustomerBO();
                                try {
                                                
                                                if(email.equals("") || password.equals("") || Long.valueOf(accountno).equals(""))
                                                {
                                                                redirectTo(request, response, "Login.jsp", "message", "Please fill all the credentials.");
                                                                return;
                                                }
                                                
                                                Customer customer= customerBO.getCustomer(accountno);
                                                if (customer == null){
                                                                redirectTo(request, response, "Login.jsp", "message", "No such customer found!");
                                                                return;
                                                }
                                                
                                                if (customer.getEmail().equals(email) && customer.getPassword().equals(password)){
                                                                redirectTo(request, response, "UserHome.jsp", "message", "Logged in successfully!");
                                                }
                                                else {
                                                                
                                                                redirectTo(request, response, "Login.jsp", "message", "Credentials do not match");
                                                }
                                } catch (NumberFormatException | ParseException e) {
                                                try {
                                                                redirectTo(request, response, "Login.jsp", "message", "Invalid input.");
                                                } catch (ServletException e1) {

                                                                e1.printStackTrace();
                                                } catch (IOException e1) {

                                                                e1.printStackTrace();
                                                }
                                                e.printStackTrace();
                                } catch (ClassNotFoundException | SQLException e) {
                                                e.printStackTrace();
                                } catch (ServletException e) {

                                                e.printStackTrace();
                                } catch (IOException e) {

                                                e.printStackTrace();
                                } catch (NamingException e) {
                                                // TODO Auto-generated catch block
                                                e.printStackTrace();
                                }
                }
                
                public void redirectTo(HttpServletRequest request, HttpServletResponse response, String target, String tag, String message) throws ServletException, IOException {
                                
                                System.out.println(message);
                                request.setAttribute(tag, message);
                                request.getRequestDispatcher(target).forward(request, response);
                }

}

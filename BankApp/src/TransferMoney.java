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

@WebServlet("/TransferMoney")
public class TransferMoney extends HttpServlet {

                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                                long recvaccno =Long.parseLong(request.getParameter("recvAccno"));
                                String password =request.getParameter("password");
                                
                                double amount;
                                try {
                                                amount = Double.parseDouble(request.getParameter("amount"));
                                } catch (NumberFormatException e) {
                                                
                                                redirectTo(request, response, "TransferMoney.jsp", "message", "Invalid amount entered.");
                                                return;
                                }
                                
                                HttpSession session = request.getSession();
                                long accno = (Long)session.getAttribute("accno");
                                
                                if(Long.valueOf(recvaccno).equals("") || password.equals("") || String.valueOf(amount).equals("0"))
                                {
                                                redirectTo(request, response, "Login.jsp", "message", "Please fill all the credentials.");
                                                return;
                                }
                                
                                System.out.println(accno);
                                
                                if (Long.valueOf(accno).equals("")){
                                                redirectTo(request, response, "Login.jsp", "message", "Session expired, please login again.");
                                                return;
                                }
                                
                                CustomerBO customerBO = new CustomerBO();
                                try {
                                                Customer sender = customerBO.getCustomer(accno);
                                                Customer receiver = customerBO.getCustomer(recvaccno);
                                                
                                                if (sender==null || receiver==null){
                                                                redirectTo(request, response, "TransferMoney.jsp", "message", "Valid customer does not exist.");
                                                                return;
                                                }
                                                
                                                System.out.println(sender +" "+ receiver);
                                                
                                                if (customerBO.transferMoney(sender, receiver, amount)){
                                                                redirectTo(request, response, "TransferMoney.jsp", "message", "Amount transferred Successfully!");
                                                                return;
                                                }
                                                else{
                                                                redirectTo(request, response, "TransferMoney.jsp", "message", "There was a problem in money transfer.");
                                                }
                                                
                                } catch (NumberFormatException | ClassNotFoundException | SQLException
                                                                | ParseException e) {
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
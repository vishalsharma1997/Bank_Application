
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

@WebServlet("/userDeposit")
public class userDeposit extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String password = request.getParameter("password");
		double amount;
		try {
			amount = Double.parseDouble(request.getParameter("amount"));
		} catch (NumberFormatException e) {

			redirectTo(request, response, "userDeposit.jsp", "message", "Invalid amount entered.");
			return;
		}
		long accno = Long.parseLong(request.getParameter("accno"));

		// HttpSession session = request.getSession();
		// long accno = (Long) session.getAttribute("accno");

		System.out.println(accno);

		if (Long.valueOf(accno).equals("")) {
			redirectTo(request, response, "userDeposit.jsp", "message", "Session expired, please login again.");
			return;
		}

		CustomerBO customerBO = new CustomerBO();
		try {
			Customer sender = customerBO.getCustomer(accno);

			if (customerBO.depositMoney(sender, amount)) {
				redirectTo(request, response, "userDeposit.jsp", "message", "Amount transferred Successfully! Available Balance : " + sender.getBalance());
				return;
			} else {
				redirectTo(request, response, "userDeposit.jsp", "message", "There was a problem in money transfer.");
			}

		} catch (NumberFormatException | ClassNotFoundException | SQLException | ParseException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void redirectTo(HttpServletRequest request, HttpServletResponse response, String target, String tag,
			String message) throws ServletException, IOException {

		System.out.println(message);
		request.setAttribute(tag, message);
		request.getRequestDispatcher(target).forward(request, response);
	}

}
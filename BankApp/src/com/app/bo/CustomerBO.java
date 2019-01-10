package com.app.bo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import java.util.List;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.app.dao.CustomerDao;
import com.app.entity.Customer;

public class CustomerBO {

	public long createCustomer(String name, String email, String password, String address, String dob, long phoneNo,
			double balance, String accountNo) throws ClassNotFoundException, SQLException, NamingException {

		Customer customer = new Customer(name, email, password, address, dob, phoneNo);
		CustomerDao customerDao = new CustomerDao();

		return customerDao.addCustomer(customer);
	}

	public Customer getCustomer(long accountno)
			throws SQLException, ClassNotFoundException, NumberFormatException, ParseException, NamingException {
		CustomerDao customerDao = new CustomerDao();
		List list = customerDao.getCustomer(accountno);

		if (list == null || list.isEmpty()) {
			return null;
		}

		return (Customer) list.get(0);
	}

	public List<Customer> getAllCustomers() throws SQLException, ClassNotFoundException, NamingException {
		CustomerDao customerDao = new CustomerDao();
		List list = customerDao.getAllCustomers();

		if (list == null) {
			return null;
		}

		return list;
	}

	public boolean transferMoney(Customer fromCustomer, Customer toCustomer, double amount)
			throws SQLException, ClassNotFoundException, NamingException {
		CustomerDao customerDao = new CustomerDao();
		return customerDao.sendMoney(fromCustomer, toCustomer, amount);
	}

	public boolean depositMoney(Customer customer, double amount)
	{
		CustomerDao customerDao = new CustomerDao();
		return customerDao.depositMoney(customer, amount);
	}
	
	public boolean debitMoney(Customer customer , double amount)
	{
		CustomerDao customerDao = new CustomerDao();
		return customerDao.debitMoney(customer, amount);
	}
	
	public String getAllUsersFeedBack() {
			return "Hello";
	}

}
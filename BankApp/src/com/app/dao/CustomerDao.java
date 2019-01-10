package com.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.util.List;

import com.app.dbcon.DBConnection;
import com.app.entity.Customer;

public class CustomerDao {
	private Configuration configuration;
	private SessionFactory sessionFactory;
	private Transaction transaction;

	public CustomerDao() {

		configuration = new Configuration().configure("main/resources/hibernate.cfg.xml");
		sessionFactory = configuration.buildSessionFactory();
	}

	public long addCustomer(Customer customer) throws SQLException {
		Session session = sessionFactory.openSession();
		long accountNo;

		try {
			transaction = session.beginTransaction();
			session.save(customer);
			accountNo = customer.getAccountNo();
			transaction.commit();
			return accountNo;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			session.close();
		}
	}

	public List<Object> getAllCustomers() {
		List<Object> obj = null;
		Session session = sessionFactory.openSession();

		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from com.app.entity.Customer");
			obj = query.list();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return obj;
	}

	public List getCustomer(long accountno) throws SQLException {
		Session session = sessionFactory.openSession();

		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from com.app.entity.Customer where accountno = :accno");
			query.setLong("accno", accountno);

			List list = query.list();
			transaction.commit();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public synchronized boolean sendMoney(Customer fromCustomer, Customer toCustomer, double amount)
			throws SQLException {
		Session session = sessionFactory.openSession();

		try {
			transaction = session.beginTransaction();
			fromCustomer.setBalance(fromCustomer.getBalance() - amount);
			toCustomer.setBalance(toCustomer.getBalance() + amount);

			session.update(fromCustomer);
			session.update(toCustomer);
			transaction.commit();

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	public boolean depositMoney(Customer customer, double amount) {
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			customer.setBalance(customer.getBalance() + amount);
			session.update(customer);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	public boolean debitMoney(Customer customer, double amount) {
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			customer.setBalance(customer.getBalance() - amount);
			session.update(customer);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

}
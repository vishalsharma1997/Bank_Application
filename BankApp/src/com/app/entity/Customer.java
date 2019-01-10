package com.app.entity;

public class Customer {
	private String name, email, password, address;
	private String dob;
	private long phoneNo;

	private double balance;
	private long accountNo;

	public Customer() {
	}

	public Customer(String name, String email, String password, String address, String dob, long phoneNo) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.address = address;
		this.dob = dob;
		this.phoneNo = phoneNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public long getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(long accountNo) {
		this.accountNo = accountNo;
	}

	@Override
	public String toString() {
		return "Customer [name=" + name + ", email=" + email + ", password=" + password + ", address=" + address
				+ ", dob=" + dob + ", phoneNo=" + phoneNo + ", balance=" + balance + ", accountNo=" + accountNo + "]";
	}

}
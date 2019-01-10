package com.app.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConnection {
 public static Connection getConnection() throws NamingException, SQLException{
  
  /*ResourceBundle bundle = ResourceBundle.getBundle("mysql");
  
  String driverName = bundle.getString("db.driver");
  String url = bundle.getString("db.url");
  String username = bundle.getString("db.username");
  String password = bundle.getString("db.password");*/
  
  Context initContext = new InitialContext();
        Context envContext = (Context) initContext.lookup("java:comp/env");
        DataSource ds = (DataSource) envContext.lookup("jdbc/vishal");
        Connection conn = ds.getConnection();
        

  /*String driverName = "com.mysql.jdbc.Driver";
  String url = "jdbc:mysql://localhost:3306/test";
  String username = "root";
  String password = "";*/
        
  return conn;
 }
}
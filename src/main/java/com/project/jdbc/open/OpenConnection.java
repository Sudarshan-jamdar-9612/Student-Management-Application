package com.project.jdbc.open;

import java.io.*;
import java.sql.*;

public class OpenConnection {
	public static int result;
	public static Connection connection;
	public static Statement statement;
	public static ResultSet resultSet;
	public static PrintWriter writer;
	public static PreparedStatement preparedStatement; 
	public static String url = "jdbc:mysql://localhost:3306/studentDetails?user=root & password=root";
	
	public  static void openConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url);
			statement = connection.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

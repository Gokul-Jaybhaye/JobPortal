package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static Connection conn;
	public static Connection getConn() {
		try {
		if(conn==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Job_portal", "root", "gokul@9960");


		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}

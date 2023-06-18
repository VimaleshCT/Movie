

package com.msc.dbms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Validation {
	public static boolean loginValidity(String username, String password) {
		boolean valid = false;
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java", "root", "2021239025");
			PreparedStatement stmt = con.prepareStatement("select count(*)from ex where username=? and password=?");
			stmt.setString(1,username);
			stmt.setString(2,password);
			ResultSet rs= stmt.executeQuery();
			while(rs.next()) {
					if(rs.getInt(1)>0)
					{
						valid = true;
					}
			}
			rs.close();
			stmt.close();
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return valid;
	}
}

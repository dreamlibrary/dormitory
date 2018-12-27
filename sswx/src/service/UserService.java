package service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DbConnect;
import user.UserTable;

public class UserService {
	private  Connection conn;
	private  PreparedStatement pstmt;
	ResultSet rs=null;
	public UserService(){
		new db.DbConnect();
		conn = DbConnect.getConnection();
	}
	
	public boolean valiUser(UserTable user){
		
		try {
			pstmt =conn.prepareStatement("select * from usertable where username=? and password=?");
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			rs =pstmt.executeQuery();
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
}

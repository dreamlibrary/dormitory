package db;
import java.sql.*;
public class DbConnect {
	public static Connection con;

	public static Connection getConnection(){

		try {

			Class.forName("org.gjt.mm.mysql.Driver").newInstance();    

			String url ="jdbc:mysql://localhost/sswx?user=root&password=root"
					+ "&useUnicode=true&characterEncoding=utf-8&useSSL=true"; 

			con=DriverManager.getConnection(url); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
} 

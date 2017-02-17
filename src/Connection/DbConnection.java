package Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	public Connection getConnections(){
		Connection con=null;
System.out.println("inside getcon");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
			System.out.println("connected");
		}catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return con;
	}
	
}



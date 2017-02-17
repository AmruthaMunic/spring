package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Connection.DbConnection;

import com.Beans.RegisterBean;


public class registerservices extends DbConnection {
	//Connection con=DbConnection.getConnection();

	public boolean login(RegisterBean registerbean) {
		// TODO Auto-generated method stub
		
		System.out.println("inside insert");
		String sql="insert into regi(fname,lname,mobile,gender,email,password,img) values(?,?,?,?,?,?,?)";
		//Connection con=null;
		try {
			//@SuppressWarnings("null")
			PreparedStatement ps=super.getConnections().prepareStatement(sql);
			System.out.println(sql);
			ps.setString(1,registerbean.getFirstname());
			ps.setString(2,registerbean.getLastname());
			ps.setInt(3,registerbean.getMobileno());
			ps.setString(4,registerbean.getGender());
			ps.setString(5,registerbean.getEmail());
			ps.setString(6,registerbean.getPassword());
			ps.setString(7,registerbean.getFilename());
			System.out.println(registerbean.getFirstname());
			boolean i= ps.execute();
			return i;
			 //ps.close();
			//System.out.println(registerbean.getPassword());
		}
		 catch (SQLException e) 
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		
		return false;

}
}
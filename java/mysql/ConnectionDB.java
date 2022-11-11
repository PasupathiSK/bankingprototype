package mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import check.UserDefinedException;

public class ConnectionDB {
	boolean flag=false;
	// Get PreparedStatement   
	public PreparedStatement getPreparedStatement(String query)throws UserDefinedException{
		try {
			Connection con=connectionDB();
			PreparedStatement pStatement=con.prepareStatement(query);
			return pStatement;
		}
		catch(SQLException ex) {
			throw new UserDefinedException("Error Occur : ",ex);
		}
	}
	// Get connection
	public Connection connectionDB()throws UserDefinedException{
		String dataBase="jdbc:mysql://localhost/bank";
		String uName="incubation";
		String uPassword="Pasu@143";
		Connection con=null;
		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(dataBase,uName,uPassword);
			flag=true;
		}
//		catch(ClassNotFoundException ex) {
//			throw new UserDefinedException("Errorr Occur : ",ex);
//		}
		catch(SQLException ex) {
			throw new UserDefinedException("Erro Occur : ",ex);
		}
		if(flag) {
			System.out.println("...");
		}
		return con;
	}
	public PreparedStatement getPreparedStatement(String iQuery, int returnGeneratedKeys)throws UserDefinedException {
		try {
			Connection con=connectionDB();
			PreparedStatement pStatement=con.prepareStatement(iQuery,returnGeneratedKeys);
			return pStatement;
		}
		catch(SQLException ex) {
			throw new UserDefinedException("Error Occur : ",ex);
		}
	}
}

package dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import check.CheckClass;
import check.UserDefinedException;
import model.Login;

public class UserLogin {
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
			con=DriverManager.getConnection(dataBase,uName,uPassword);
		}
		catch(SQLException ex) {
			throw new UserDefinedException("Erro Occur : ",ex);
		}
		return con;
	}
	// User Login  CASE 1  customer and admin
	// customer CASE 1 and admin CASE 1
	public String userLogin(Login login)throws UserDefinedException{
	    CheckClass.checkNull(login.getPassCode());
	    String role=null;
		String lQuery="select role from login where (customerId=?) and (passcode=?)";
		try(PreparedStatement pStatement=getPreparedStatement(lQuery)){
			pStatement.setInt(1, login.getCustomerId());
			pStatement.setString(2, login.getPassCode());
			try(ResultSet resultSet=pStatement.executeQuery()){
				if(resultSet.getMetaData().getColumnCount()==0) {
					return role;
				}
				else {
					while(resultSet.next()) {
					role=resultSet.getString("role");
					}
				}
			}
		}
		catch(SQLException ex) {
			throw new UserDefinedException("Error Occur : ",ex);
		}
		return role;
}
	
	// if user is customer just check the login credentials        
	// Customer check login CASE 1
	public boolean checkLogin(int customerId)throws UserDefinedException{
		String cQuery="Select customerStatus from Customerinfo where customerId="+customerId;
		String status="";
		boolean flag=false;
		try(PreparedStatement pStatement=getPreparedStatement(cQuery);ResultSet resultSet=pStatement.executeQuery()){
			while(resultSet.next()) {
				status=resultSet.getString("customerStatus");
			}
			System.out.println(status);
			if(status=="Blocked") {
				return flag;
			}
		}
		catch(SQLException ex) {
			throw new UserDefinedException("Error Occur : ",ex);
		}
		return true;
	}
}

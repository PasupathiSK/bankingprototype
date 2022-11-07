package dao;


import java.util.List;


import java.util.Map;


import check.UserDefinedException;
import model.Account;
import model.Customer;
import model.Transaction;
import model.User;
import mysql.ConnectionDB;

public class AdminTask {
ConnectionDB con=new ConnectionDB();	
BankInterface bInterface=new BankLogical();
	// show customer info   EX 2 customer and admin
	public User getUserInfo(int customerId)throws UserDefinedException{
		return bInterface.getUserInfo(customerId);
	}
	// get Userinfo activity CASE 1 Customer
		public List<User> getAllUserActivity()throws UserDefinedException{
			return bInterface.getAllUserActivity();
		}
	// get all show User info ADMIN CASE 13
	public List<User> getAllUserInfo()throws UserDefinedException{
		return bInterface.getAllUserInfo();
	}
	// get Customer info CASE 10 customer and admin
	public Customer getCustomerInfo(int customerId)throws UserDefinedException{
		return bInterface.getCustomerInfo(customerId);
	}
	// get all customer info   CASE 10 ADMIN
	public List<Customer> getAllCustomerInfo()throws UserDefinedException{
		return bInterface.getAllCustomerInfo();
	}
	// show Account info CASE 3 customer and admin
	public Map<Integer,Map> getAccountInfo(int customerId,long aNumber)throws UserDefinedException{
		return bInterface.getAccountInfo(customerId, aNumber);
	}
	// get all account info admin CASE 11
	public List<Account> getAllAccountInfo()throws UserDefinedException{
		return bInterface.getAllAccountInfo();
	}
	// show customer id to get all account info  CASE 9 customer and admin
	public List<Account> getCustomerIdToGetAllAccountInfo(int customerId)throws UserDefinedException{
	      return bInterface.getCustomerIdToGetAllAccountInfo(customerId);
	}
	// show transaction info CASE 4 customer and admin
	public Map<Integer,Transaction> getTransactionInfo(int customerId,long aNumber)throws UserDefinedException{
		return bInterface.getTransactionInfo(customerId, aNumber);
	}
	// Account status  ADMIN case 14 admin
	public void deactiveAccount(int customerId,long accountNumber,boolean flag)throws UserDefinedException{
		bInterface.deactiveAccount(customerId, accountNumber, flag);
	}
}

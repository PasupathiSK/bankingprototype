package dao;

import java.util.List;

import java.util.Map;

import check.UserDefinedException;
import model.Customer;
import model.Transaction;
import model.User;
import model.Account;
import mysql.ConnectionDB;

public class CustomerTask {
	ConnectionDB con=new ConnectionDB();
	BankInterface bInterface=new BankLogical();
	// get user activity status  CASE 1  Customer
	public void userActivityStatus(int customerId,boolean flag)throws UserDefinedException {
		bInterface.userActivityStatus(customerId, flag);
	}
	// show customer info   EX 2 customer and admin
	public User getUserInfo(int customerId)throws UserDefinedException{
		return bInterface.getUserInfo(customerId);
	}
	// get Customer info CASE 10 customer and admin
	public Customer getCustomerInfo(int customerId)throws UserDefinedException{
		return bInterface.getCustomerInfo(customerId);
	}
	// show Account info CASE 3 customer and admin
	public Map<Integer,Map> getAccountInfo(int customerId,long aNumber)throws UserDefinedException{
		return bInterface.getAccountInfo(customerId, aNumber);
	}
	// show customer id to get all account info  CASE 9 customer and admin
	public List<Account> getCustomerIdToGetAllAccountInfo(int customerId)throws UserDefinedException{
		return bInterface.getCustomerIdToGetAllAccountInfo(customerId);
	}
	// show transaction info CASE 4 customer and admin
	public Map<Integer,Transaction> getTransactionInfo(int customerId,long aNumber)throws UserDefinedException{
		return bInterface.getTransactionInfo(customerId, aNumber);
	}
	}

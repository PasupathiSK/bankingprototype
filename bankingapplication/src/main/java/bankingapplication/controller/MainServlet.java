package bankingapplication.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import check.UserDefinedException;
import dao.BankInterface;
import dao.BankLogical;
import model.Account;
import model.AccountRequest;
import model.Customer;
import model.Login;
import model.Request;
import model.Transaction;
import model.User;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private BankInterface bInterface=new BankLogical();  
     RequestDispatcher requestDispatcher;
    static int id;
    static String passCode;
//    static String nCustomerId;
//    static String nAccountNumber;
//    static String nStatus;
    static boolean flag=false;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			doProcess(request,response);
		} catch (ServletException | IOException | UserDefinedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doProcess(request,response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UserDefinedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String url=request.getServletPath();
		System.out.println(url);
		switch(url) {
		   case "/login":
		   {
			   login(request,response);
			   break;
		   }
		   case "/CustomerHomePage":
		   {
			   customerHome(request,response);
			   break;
		   }
		   case "/Logout":
		   {
			   logout(request,response);
			   break;
		   }
		   case "/MyDetailsHome":
		   {
			   myDetailsHome(request,response);
			   break;
		   }
		   case "/TransactionHome":
		   {
			   transactionHome(request,response);
			   break;
		   }
		   case "/SetRequestAccountStatus":
		   {
			   setRequestAccountStatus(request,response);
			   break;
		   }
		   case "/UpdatePasscode":
		   {
			   updatePasscode(request,response);
			   break;
		   }
		   case "/DepositPage":
		   {
			   depositPage(request,response);
			   break;
		   }
		   case "/WithdrawRequestPage":
		   {
			   withdrawRequestPage(request,response);
			   break;
		   }
		   case "/TransferPage":
		   {
			   transferPage(request,response);
			   break;
		   }
		   case "/TransactionLimitPage":
		   {
			   transactionLimitPage(request,response);
			   break;
		   }
		   case "/TransactionDetailsPage":
		   {
			   transactionDetailsPage(request,response);
			   break;
		   }
		   case "/AdminHomePage":
		   {
			   adminHomePage(request,response);
			   break;
		   }
		   case "/UserInfoByIdPage":
		   {
			   userInfoBytIdPage(request,response);
			   break;
		   }
		   case "/TransactionDetailsByIdPage":
		   {
			   transactionDetailsById(request,response);
			   break;
		   }
		   case "/AccountInfoHomePage":
		   {
			   accountInfoHomePage(request,response);
			   break;
		   }
		   case "/ActiveAndDeactivePage":
		   {
			   activeAndDeactivePage(request,response);
			   break;
		   }
		   case "/BlockAccountPage":
		   {
			   blockAccountPage(request,response);
			   break;
		   }
		   case "/BlockCustomerByCustomerIdPage":
		   {
			   blockCustomerByCustomerIdPage(request,response);
			   break;
		   }
		   case "/InsertHomePage":
		   {
			   insertHomePage(request,response);
			   break;
		   }
		   case "/AllAccountInfoPage":
		   {
			   allAccountInfoPage(request,response);
			   break;
		   }
//		   case "/AccountInfoByIdPage":
//		   {
//			   accountInfoByIdPage(request,response);
//			   break;
//		   }
		   case "/InsertInAccountPage":
		   {
			   insertInAccountPage(request,response);
			   break;
		   }
		   case "/InsertInCustomerPage":
		   {
			   insertInCustomerPage(request,response);
			   break;
		   }
		   case "/InsertInfLoginPage":
		   {
			   insertInLoginPage(request,response);
			   break;
		   }
		   case "/InsertInUserPage":
		   {
			   insertInUserPage(request,response);
			   break;
		   }
		   case "/editUserInfoProcess":
		   {
			   editUserInfoProcess(request,response);
			   break;
		   }
		   case "/editCustomerInfoProcess":
		   {
			   editCustomerInfoProcess(request,response);
			   break;
		   }
		   case "/withdrawRequest":
		   {
			   withdrawRequest(request,response);
			   break;
		   }
		   case "/depositProcess":
		   {
			   depositProcess(request,response);
			   break;
		   }
		   case "/transferProcess":
		   {
			   transferProcess(request,response);
			   break;
		   }
		   case "/setRequestAccountStatusProcess":
		   {
			   setRequestAccountStatusProcess(request,response);
			   break;
		   }
		   case "/updatePasscodeProcess":
		   {
			   updatePasscodeProcess(request,response);
			   break;
		   }
		   case "/insertInAccountInfoProcess":
		   {
			   insertInAccountInfoProcess(request,response);
			   break;
		   }
		   case "/insertInUserProcess":
		   {
			   insertInUserProcess(request,response);
			   break;
		   }
		   case "/UpdateAccountStatus":
		   {
			   updateAccountStatus(request,response);
			   break;
		   }
		   case "/blockAccountProcess":
		   {
			   blockAccountProcess(request,response);
			   break;
		   }
		   case "/blockCustomerProcess":
		   {
			   blockCustomerProcess(request,response);
			   break;
		   }
		   case "/withdrawApprovePage":
		   {
			   withdrawApproveProcess(request,response);
			   break;
		   }
		   case "/TransactionLimitAdminPage":
		   {
			   transactionLimitAdminPage(request,response);
			   break;
		   }
		   case "/accountInfoProcess":
		   {
			   accountInfoProcess(request,response);
			   break;
		   }
		   case "/customerInfoProcess":
		   {
			   customerInfoProcess(request,response);
			   break;
		   }
		   default:
		   {
			   break;
		   }
		}
	}

// Customer Info Process
	
private void customerInfoProcess(HttpServletRequest request, HttpServletResponse response) throws UserDefinedException, ServletException, IOException {
		String customerId=request.getParameter("customerId");
		System.out.println(customerId);
		User user=bInterface.getUserInfo(Integer.parseInt(customerId));
		System.out.println(user.getCustomerId());
		try {
			if(user.getCustomerId()==Integer.parseInt(customerId)) {
				List<Customer> listCustomer = bInterface.getAllCustomerInfo(Integer.parseInt(customerId));
				System.out.println("1 here");
				List<User> listUser = bInterface.getAllUserInfo(Integer.parseInt(customerId));
				HttpSession httpSession=request.getSession();
		if(!listCustomer.isEmpty()||listCustomer.isEmpty()&&!listUser.isEmpty()) {
		httpSession.setAttribute("listCustomer", listCustomer);
//		request.setAttribute("listCustomer", listCustomer);
		System.out.println("2 here");
		httpSession.setAttribute("listUser", listUser);
//		request.setAttribute("listUser", listUser);
			request.getRequestDispatcher("views/bankingprototype/admin/UserCustomerInfoById.jsp").forward(request, response);
		}
			}
		else {
			request.setAttribute("userCustomerInfo","Not Valid User");
			request.getRequestDispatcher("views/bankingprototype/admin/UserCustomerInfoById.jsp").forward(request, response);
		}
		}
		catch(Exception ex) {
			request.setAttribute("userCustomerInfo",ex.getMessage());
			request.getRequestDispatcher("views/bankingprototype/admin/UserCustomerInfoById.jsp").forward(request, response);
		}
	}

// Account Info Process
	
private void accountInfoProcess(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, UserDefinedException, ServletException, IOException {
		String customerId=request.getParameter("customerId");
		List<Account>list=bInterface.getCustomerIdToGetAllAccountInfo(Integer.parseInt(customerId));
		if(!list.isEmpty()&&list!=null) {
		request.setAttribute("allAccountInfo",list);
		request.getRequestDispatcher("views/bankingprototype/admin/AllAccountInfo.jsp").forward(request, response);
		}
		else {
			request.setAttribute("allAccountInfoError","Account Not Available");
	    	requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AllAccountInfo.jsp");
			requestDispatcher.forward(request,response);
		}
	}

// Transaction Limit Admin Page 
	
private void transactionLimitAdminPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/TransactionLimit.jsp");
	requestDispatcher.forward(request, response);
	}

// Withdraw Approve Process
//	static String wCustomerId;
//	static String wAccountNumber;
//	static String wAmount;
//	static boolean checkFlag=false;
private void withdrawApproveProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException {		
//	if(!checkFlag) {
			String	wCustomerId=request.getParameter("customerId");
		String wAccountNumber=request.getParameter("accountNumber");
			String wAmount=request.getParameter("amount");
			String status=request.getParameter("status");
//			checkFlag=true;
//			}
//	System.out.println(checkFlag);
			System.out.println(wCustomerId+" "+wAccountNumber+" "+wAmount);
			System.out.println(status);
//			if(status.equals("approved")) {
//				requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/WithdrawApprove.jsp");
//				requestDispatcher.forward(request, response);
//			String status=request.getParameter("status");
			System.out.println(wCustomerId+" "+wAccountNumber+" "+wAmount+" "+status);
			Request rRequest=new Request();
			System.out.println("1 here");
			rRequest.setAccountNumber(Long.parseLong(wAccountNumber));
			rRequest.setCustomerId(Integer.parseInt(wCustomerId));
			rRequest.setAmount(Long.parseLong(wAmount));
			rRequest.setStatus("pending");
			if(status!=null) {
			System.out.println("2 here");
			if(status.equals("approved")) {
				System.out.println("3 here");
				if(bInterface.updateWithdrawApprove(rRequest, true)) {
					System.out.println("Withdraw Successfully : ");
//					checkFlag=false;
//					requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AdminHome.jsp");
//					requestDispatcher.forward(request, response);
				adminHomePage(request,response);
				}
				else {
//					checkFlag=false;
					System.out.println("check");
				}
			}
			else {
				System.out.println("4 here");
				if(bInterface.updateWithdrawApprove(rRequest, false)) {
					System.out.println("Withdraw Rejected Successfully : ");
//					requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AdminHome.jsp");
//					requestDispatcher.forward(request, response);
//					adminHomePage(request,response);
					adminHomePage(request,response);

//					checkFlag=false;
				}
				else {
//					checkFlag=false;
					adminHomePage(request,response);

					System.out.println("check");
				}
			}
			}
}
			
//			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AdminHome.jsp");
//			requestDispatcher.forward(request, response);

// Block Customer Process 
	
private void blockCustomerProcess(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, UserDefinedException, ServletException, IOException {
		String customerId=request.getParameter("customerId");
		String choice=request.getParameter("choice");
		System.out.println(customerId);
		if(choice.equals("block")) {
		if(bInterface.blockCustomer(Integer.parseInt(customerId),true)) {
			System.out.println("Blocked Customer Successfully : ");
			request.setAttribute("blockCustomer","Blocked Successfully");
			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockCustomerByCustomerId.jsp");
			requestDispatcher.forward(request, response);
		}
		else {
			request.setAttribute("blockCustomer","Not Valid Customer Id");
			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockCustomerByCustomerId.jsp");
			requestDispatcher.forward(request, response);
		}
		}
		else {
			if(bInterface.blockCustomer(Integer.parseInt(customerId),false)) {
				System.out.println("Activate Customer Successfully : ");
				request.setAttribute("blockCustomer","Activate Successfully");
				requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockCustomerByCustomerId.jsp");
				requestDispatcher.forward(request, response);
			}
			else {
				request.setAttribute("blockCustomer","Not Valid Customer Id");
				requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockCustomerByCustomerId.jsp");
				requestDispatcher.forward(request, response);
			}
		}
	}

// Block Account Process 
	
private void blockAccountProcess(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, UserDefinedException, ServletException, IOException {
		String customerId=request.getParameter("customerId");
		String accountNumber=request.getParameter("accountNumber");
		System.out.println(customerId+" "+accountNumber);
		try {
		if(bInterface.blockAccount(Integer.parseInt(customerId),Long.parseLong(accountNumber))){
			System.out.println("Blocked Successfully : ");
			request.setAttribute("blockAccount","Blocked Successfully");
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockAccount.jsp");
		requestDispatcher.forward(request, response);
		}
		else {
			request.setAttribute("blockAccount","Not Valid Details");
			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockAccount.jsp");
			requestDispatcher.forward(request, response);
		}
		}
		catch(Exception ex) {
			request.setAttribute("blockAccount",ex.getMessage());
			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockAccount.jsp");
			requestDispatcher.forward(request, response);
		}
	}

// Update Account Status
	
private void updateAccountStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException, UserDefinedException {
//	if(!flag) {
   String  nCustomerId=request.getParameter("customerId");
   String nAccountNumber=request.getParameter("accountNumber");
//	String nStatus=request.getParameter("status");
//	flag=true;
//	}
	System.out.println(nCustomerId+" "+nAccountNumber+" ");
//	if(nStatus.equals("accept")) {
//		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/UpdateAccountStatus.jsp");
//		requestDispatcher.forward(request, response);
		String decision=request.getParameter("status");
		System.out.println(nCustomerId+" "+nAccountNumber+" "+" "+decision);
	if(decision!=null) {
		if(decision.equals("active")) {
			bInterface.deactiveAccount(Integer.parseInt(nCustomerId), Long.parseLong(nAccountNumber), true);
			System.out.println("Active 1 Updated Successfully : ");
			if(bInterface.updateAccountStatus(Integer.parseInt(nCustomerId),Long.parseLong(nAccountNumber), true)) {
				System.out.println(" acepted 2Updated Successfully : ");
				adminHomePage(request,response);
//			}
			}
			adminHomePage(request,response);
		}
		else {
			bInterface.deactiveAccount(Integer.parseInt(nCustomerId),Long.parseLong(nAccountNumber), false);
			System.out.println("Deactive 1 updated Successfully : ");
			if(bInterface.updateAccountStatus(Integer.parseInt(nCustomerId),Long.parseLong(nAccountNumber),false)) {
				System.out.println("rejected 1 Updated Successfully : ");
				adminHomePage(request,response);
//			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/ActiveAndDeactive.jsp");
//			requestDispatcher.forward(request, response);
		}
			else {
				System.out.println("check");
				adminHomePage(request,response);
			}
		}
//		if(bInterface.updateAccountStatus(Integer.parseInt(nCustomerId),Long.parseLong(nAccountNumber), true)) {
//			System.out.println(" active 2Updated Successfully : ");
//			adminHomePage(request,response);
////		}
//		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/ActiveAndDeactive.jsp");
//		requestDispatcher.forward(request, response);
//		flag=false;
	}

	
//	else {
//		if(bInterface.updateAccountStatus(Integer.parseInt(nCustomerId),Long.parseLong(nAccountNumber),false)) {
//			System.out.println("deactivate 1 Updated Successfully : ");
//			adminHomePage(request,response);
////		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/ActiveAndDeactive.jsp");
////		requestDispatcher.forward(request, response);
//	}
//		else {
//			System.out.println("check");
//			adminHomePage(request,response);
//		}
//	}
	}



// Insert In User Process
	
private void insertInUserProcess(HttpServletRequest request, HttpServletResponse response) throws UserDefinedException, ServletException, IOException {
//		String customerId=request.getParameter("customerId");
		String name=request.getParameter("name");
		String passcode=request.getParameter("passcode");
		String role=request.getParameter("role");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String dateOfBirth=request.getParameter("dateOfBirth");
		String aadhar=request.getParameter("aadhar");
		String panNumber=request.getParameter("panNumber");
		String zipcode=request.getParameter("zipcode");
		String status=request.getParameter("status");
		Login login=new Login();
//		login.setCustomerId(Integer.parseInt(customerId));
		login.setName(name);
		login.setPassCode(passcode);
		login.setRole(role);
		User user=new User();
//		user.setCustomerId(Integer.parseInt(customerId));
		user.setMobileNumber(mobile);
		user.setDateOfBirth(dateOfBirth);
		user.setEmail(email);
		user.setStatus("Logout");
		user.setName(name);
		Customer customer=new Customer();
//		customer.setCustomerId(Integer.parseInt(customerId));
		customer.setAadhar(Long.parseLong(aadhar));
		customer.setPanNumber(panNumber);
		customer.setStatus(status);
		customer.setZipcode(Integer.parseInt(zipcode));
		int customerId=bInterface.insertValuesInLogin(login);
		user.setCustomerId(customerId);
		customer.setCustomerId(customerId);
			if(bInterface.insertValuesInUserInfo(user)) {
				if(bInterface.insertValuesInCustomerInfo(customer)) {
					System.out.println("Updated Succesfully : ");
				}
			}
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/InsertInUser.jsp");
		requestDispatcher.forward(request, response);
	}

// Insert In Account Info Process
private void insertInAccountInfoProcess(HttpServletRequest request, HttpServletResponse response) throws UserDefinedException, ServletException, IOException {
	String customerId=request.getParameter("customerId");
	String accountNumber=request.getParameter("accountNumber");
	String branch=request.getParameter("branch");
	String accountType=request.getParameter("accountType");
	String status=request.getParameter("status");
	String ifsc=request.getParameter("ifsc");
	Account account=new Account();
	account.setCustomerId(Integer.parseInt(customerId));
	account.setAccountNumber(Long.parseLong(accountNumber));
	account.setBranch(branch);
	account.setAccountType(accountType);
	account.setAccountStatus(status);
	account.setIfsc(ifsc);
	System.out.println("1 here ");
	if(bInterface.inserValuesInAccountInfo(account)) {
		System.out.println("Updated Successfully : ");
	}
	requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/InsertInAccount.jsp");
	requestDispatcher.forward(request, response);
	}

// Update Passcode
private void updatePasscodeProcess(HttpServletRequest request, HttpServletResponse response) throws UserDefinedException, ServletException, IOException {
		String oldPasscode=request.getParameter("oldPasscode");
		String newPasscode=request.getParameter("newPasscode");
		String confirmPasscode=request.getParameter("confirmPasscode");
		Login login=new Login();
		login.setCustomerId(id);
		login.setPassCode(confirmPasscode);
		System.out.println(passCode+" "+oldPasscode+" "+newPasscode+" "+confirmPasscode);
		if(oldPasscode.equals(passCode)&&newPasscode.equals(confirmPasscode)) {
				bInterface.updatePasscodeInLogin(login);
					System.out.println("Update Successfully : ");
					request.setAttribute("passcode","Update Successfully");
					requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/UpdatePasscode.jsp");
					requestDispatcher.forward(request, response);
		}
		else {
			System.out.println("Password Mismatching : ");
			request.setAttribute("passcode","Password Mismatching");
			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/UpdatePasscode.jsp");
			requestDispatcher.forward(request, response);
		}
	}

// Set Request Account Status Process
	
private void setRequestAccountStatusProcess(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, UserDefinedException, ServletException, IOException {
		String accountNumber=request.getParameter("accountNumber");
		String description=request.getParameter("description");
		System.out.println(description);
		System.out.println(id);
		if(bInterface.setRequestForAccountStatus(id, Long.parseLong(accountNumber), description)) {
			System.out.println("Requested Successfully : ");
			request.setAttribute("requestSucessufully", "Requested Successfully");

			setRequestAccountStatus(request,response);
//		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/SetRequestAccountStatus.jsp");
//		requestDispatcher.forward(request, response);
		}
	}

// Transfer Process
	
private void transferProcess(HttpServletRequest request, HttpServletResponse response) throws UserDefinedException, ServletException, IOException {
		String fromAccountNumber=request.getParameter("accountNumber");
		String amount=request.getParameter("amount");
		String toAccountNumber=request.getParameter("toAccountNumber");
		System.out.println(fromAccountNumber+" "+toAccountNumber+" "+amount);
		Transaction transaction=new Transaction();
		transaction.setTransferAccountFrom(Long.parseLong(fromAccountNumber));
		transaction.setReceivedAccountFrom(Long.parseLong(toAccountNumber));
		transaction.setAmount(Long.parseLong(amount));
		transaction.setModeOfTransaction("transfer");
		if(bInterface.getAccountInfoAccountStatus(Long.parseLong(fromAccountNumber))) {
		try {
		if(bInterface.makeTransaction(transaction)&&Long.parseLong(fromAccountNumber)!=Long.parseLong(toAccountNumber)) {
			System.out.println("Transaction Successfully : ");
			request.setAttribute("transaction","Transfer Successfully");
			   transferPage(request,response);

//		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Transfer.jsp");
//		requestDispatcher.forward(request, response);
		}
		else {
			request.setAttribute("transaction","Something Wrong");
			   transferPage(request,response);

//			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Transfer.jsp");
//			requestDispatcher.forward(request, response);
		}
		}
		catch(UserDefinedException ex) {
			request.setAttribute("transaction",ex.getMessage());
			   transferPage(request,response);

//			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Transfer.jsp");
//			requestDispatcher.forward(request, response);
		}
		}
		else {
			request.setAttribute("transaction","Account is Inactive : Try to contact Admin");
			   transferPage(request,response);
		}
	}

// Deposit Process
	
private void depositProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException, UserDefinedException {
		String accountNumber=request.getParameter("accountNumber");
		String amount=request.getParameter("amount");
		System.out.println(accountNumber+" "+amount);
//		try {
		if(!bInterface.getAccountStatus(Long.parseLong(accountNumber)).equals("blocked")) {
			if(bInterface.depositMoney(Long.parseLong(amount),Long.parseLong(accountNumber))) {
				System.out.println("Updated Successfully : ");
				request.setAttribute("withdrawMessage","Deposited Successfully");
				requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Deposit.jsp");
				requestDispatcher.forward(request, response);
			}
//		} catch (NumberFormatException | UserDefinedException e) {
			else {
			request.setAttribute("withdrawMessage","Incorrect Account Number");
			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Deposit.jsp");
			requestDispatcher.forward(request, response);
		}
		}
		else {
			request.setAttribute("withdrawMessage","This Account Is Blocked : Not Valid For Transaction");
			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Deposit.jsp");
			requestDispatcher.forward(request, response);
		}
//		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Deposit.jsp");
//		requestDispatcher.forward(request, response);
	}

// Set Withdraw Request
	
private void withdrawRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException, UserDefinedException {
		String accountNumber=request.getParameter("accountNumber");
		String amount=request.getParameter("amount");
		System.out.println(accountNumber+" "+amount+" "+id);
		if(bInterface.getAccountInfoAccountStatus(Long.parseLong(accountNumber))) {
		try {
			if(bInterface.setWithdrawRequest(id, Long.parseLong(accountNumber), Long.parseLong(amount))){
				System.out.println("Requested Successfully : ");
//				withdrawRequestPage(request,response);
				request.setAttribute("withdrawMessage","Requested Sucessfully");
				withdrawRequestPage(request,response);
//				requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/WithdrawRequest.jsp");
//				requestDispatcher.forward(request, response);
			}
		} catch (NumberFormatException | UserDefinedException e) {
			request.setAttribute("withdrawMessage","Incorrect Details");
			withdrawRequestPage(request,response);
//			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/WithdrawRequest.jsp");
//			requestDispatcher.forward(request, response);
			e.printStackTrace();
		}
		}
		else {
			request.setAttribute("withdrawMessage","Account is Inactive : Try to contact Admin");
			withdrawRequestPage(request,response);
//			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/WithdrawRequest.jsp");
//			requestDispatcher.forward(request, response);
		}
//		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/WithdrawRequest.jsp");
//		requestDispatcher.forward(request, response);
	}


// Edit 

private void editCustomerInfoProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerId=request.getParameter("userId");
		String aadhar=request.getParameter("aadhar");
		String panNumber=request.getParameter("panNumber");
		String zipcode=request.getParameter("zipcode");
		Customer customer=new Customer();
		int userId=Integer.parseInt(customerId);
		customer.setCustomerId(userId);
		customer.setAadhar(Long.parseLong(aadhar));
		customer.setPanNumber(panNumber);
		customer.setZipcode(Integer.parseInt(zipcode));
		try {
			if(bInterface.updateCustomrInfo(customer)) {
				System.out.println("updated successfully : ");
			}
		} catch (UserDefinedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Customerinfo.jsp");
		requestDispatcher.forward(request, response);
	}

// Edit My Details Process
	
private void editUserInfoProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String customerId=request.getParameter("userId");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String dateOfBirth=request.getParameter("dob");
		if(dateOfBirth.isEmpty()) {
			dateOfBirth=null;
		}
		User user=new User();
		user.setName(name);
		user.setEmail(email);
		user.setDateOfBirth(dateOfBirth);
		int userId=Integer.parseInt(customerId);
		user.setCustomerId(userId);
		try {
			if(bInterface.updateUserInfo(user)) {
			System.out.println("updated successfully : ");
			request.setAttribute("editUserInfoMessage","Updated Sucessfully");
			myDetailsHome(request,response);
//			request.getRequestDispatcher("views/bankingprototype/customer/Customerinfo.jsp").forward(request, response);
			}
		} catch (UserDefinedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Customerinfo.jsp");
//		requestDispatcher.forward(request, response);
	}

// Insert In User Page
	
private void insertInUserPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/InsertInUser.jsp");
		requestDispatcher.forward(request,response);
	}

// Insert In Login Page

private void insertInLoginPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/InsertInLogin.jsp");
		requestDispatcher.forward(request,response);
	}

// Insert In Customer Page
	
private void insertInCustomerPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/InsertInCustomer.jsp");
		requestDispatcher.forward(request,response);
	}

// Insert In Home Page
	
private void insertInAccountPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/InsertInAccount.jsp");
		requestDispatcher.forward(request,response);
	}

// Account Info By Id Page 
	
//private void accountInfoByIdPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AccountInfoById.jsp");
//		requestDispatcher.forward(request,response);
//	}

// All Account Info Page
	
private void allAccountInfoPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException {
	    List<Account>list=bInterface.getAllAccountInfo();
	    if(!list.isEmpty()&&list!=null) {
	    request.setAttribute("allAccountInfo",list);
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AllAccountInfo.jsp");
		requestDispatcher.forward(request,response);
	    }
	    else {
	    	request.setAttribute("allAccountInfoError","Invaild Customer Id");
	    	requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AllAccountInfo.jsp");
			requestDispatcher.forward(request,response);
	    }
	}

// Insert Home Page
	
private void insertHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/InsertHome.jsp");
		requestDispatcher.forward(request,response);
	}

// Block Customer By Customer Id Page

private void blockCustomerByCustomerIdPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockCustomerByCustomerId.jsp");
		requestDispatcher.forward(request,response);
	}

// Block Account Page
	
private void blockAccountPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/BlockAccount.jsp");
		requestDispatcher.forward(request,response);
	}

// Active And Deactive Page
	
private void activeAndDeactivePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/ActiveAndDeactive.jsp");
		requestDispatcher.forward(request,response);
	}

// Account Info Home Page 
	
private void accountInfoHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AccountInfoHome.jsp");
		requestDispatcher.forward(request,response);
	}

// Transaction Details By Id
	
private void transactionDetailsById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/TransactionLimit.jsp");
		requestDispatcher.forward(request,response);
	}

// User Info By Id Page
	
private void userInfoBytIdPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException {
	List<Customer> listCustomer = bInterface.getAllCustomerInfo();
	System.out.println(listCustomer.get(2).getAadhar());
	System.out.println(listCustomer.get(1).getName());
	System.out.println("1 here");
	List<User> listUser = bInterface.getAllUserInfo();
	HttpSession httpSession=request.getSession();
	httpSession.setAttribute("listCustomer", listCustomer);
//	request.setAttribute("listCustomer", listCustomer);
	System.out.println("2 here");
	System.out.println(listCustomer.get(2).getAadhar());
	System.out.println(listCustomer.get(1).getName());
	httpSession.setAttribute("listUser", listUser);
//	request.setAttribute("listUser", listUser);
		request.getRequestDispatcher("views/bankingprototype/admin/UserCustomerInfoById.jsp").forward(request, response);
	}

// Admin Home Page
	
private void adminHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/admin/AdminHome.jsp");
		requestDispatcher.forward(request,response);
	}

// Transaction Details Page
	
private void transactionDetailsPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException, UserDefinedException {
	    String accountNumber=request.getParameter("accountNumber");
	    String days=request.getParameter("days");
	    List<Transaction>list=bInterface.getLastNTransactionInfo(Long.parseLong(accountNumber),Integer.parseInt(days));
	 //   HttpSession httpSession=request.getSession();
	 //   httpSession.setAttribute("transactionList",list);
		if(bInterface.getAccountInfoAccountStatus(Long.parseLong(accountNumber))) {

	    if(!list.isEmpty()) {
	    request.setAttribute("transactionList",list);
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/TransactionDetails.jsp");
		requestDispatcher.forward(request,response);
	    }
	    else {
	    	request.setAttribute("transactionDetailsError","Account Number Not Available");
			requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/TransactionDetails.jsp");
			requestDispatcher.forward(request,response);
	    }
		}
		else {
			request.setAttribute("errorMessage","Account is Inactive: Try to contact Admin");
			transactionLimitPage(request,response);
		}
	}

// Transaction Limit Page
	
private void transactionLimitPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException {
	List<Account>list=bInterface.getCustomerIdToGetAllAccountInfo(id);
	request.setAttribute("customerIdToAllAccount",list);
	requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/TransactionLimit.jsp");
	requestDispatcher.forward(request,response);
	}

// Transfer Page
	
private void transferPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException {
	List<Account>list=bInterface.getCustomerIdToGetAllAccountInfo(id);
	request.setAttribute("customerIdToAllAccount",list);
	
	requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Transfer.jsp");
		requestDispatcher.forward(request, response);
	}

// Withdraw Request Page
	
private void withdrawRequestPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException {
	List<Account>list=bInterface.getCustomerIdToGetAllAccountInfo(id);
	request.setAttribute("customerIdToAllAccount",list);	
	requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/WithdrawRequest.jsp");
		requestDispatcher.forward(request,response);
	}

// Deposit Page
	
private void depositPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("views/bankingprototype/customer/Deposit.jsp");
		requestDispatcher.forward(request,response);
	}

// Update Pass Code Page

private void updatePasscode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/customer/UpdatePasscode.jsp");
		requestDispatcher.forward(request,response);
	}

// Set Request Account Status  Page
	
private void setRequestAccountStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException 
{
	List<Account>list=bInterface.getCustomerIdToGetAllAccountInfo(id);
	request.setAttribute("customerIdToAllAccount",list);
		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/customer/SetRequestAccountStatus.jsp");
		requestDispatcher.forward(request,response);
	}

// Transaction Home 
	
private void transactionHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/customer/TransactionHome.jsp");
		requestDispatcher.forward(request,response);
	}

// My Details Home
	
	private void myDetailsHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException {
		Customer customer=bInterface.getCustomerInfo(id);
		request.setAttribute("customerInfo",customer);
//		request.getRequestDispatcher("views/bankingprototype/customer/Customerinfo.jsp").forward(request, response);
		User user=bInterface.getUserInfo(id);
		request.setAttribute("userInfo",user);
		request.getRequestDispatcher("views/bankingprototype/customer/Customerinfo.jsp").forward(request, response);
//		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/customer/MyDetailsHome.jsp");
//		requestDispatcher.forward(request, response);
	}

// logout
	
	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession httpSession=request.getSession(false);
//		httpSession.removeAttribute("customerId");
//		httpSession.removeAttribute("passcode");
//		httpSession.invalidate();
//		System.out.println("log out");
		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/login/login.jsp");
		requestDispatcher.forward(request,response);
	}

// Customer Home Page
	
	private void customerHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/customer/CustomerHome.jsp");
		requestDispatcher.forward(request, response);
	}

// login
	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UserDefinedException{
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String customerId=request.getParameter("customerId");
		String passcode=request.getParameter("passcode");
		Login login=new Login();
		id=Integer.parseInt(customerId);
		User user=bInterface.getUserInfo(id);
		request.setAttribute("userInfo",user);
		passCode=passcode;
		System.out.println(" "+id);
		login.setCustomerId(Integer.parseInt(customerId));
		login.setPassCode(passcode);
		
		if(bInterface.checkLogin(Integer.parseInt(customerId))) {
			bInterface.userLogin(login);
		String status=null;
			System.out.println(customerId+" "+passcode);
			status=bInterface.userLogin(login);
		System.out.println(status);
		RequestDispatcher requestDispatcher;
		if(status!=null&&status.equals("customer")) {
//			List<Account>list=bInterface.getCustomerIdToGetAllAccountInfo(Integer.parseInt(customerId));
//			request.setAttribute("customerIdToAllAccount",list);
//			Customer customer=bInterface.getCustomerInfo(Integer.parseInt(customerId));
//			request.setAttribute("customerInfo",customer);
//			request.getRequestDispatcher("views/bankingprototype/customer/Customerinfo.jsp").forward(request, response);
			List<Account>list=bInterface.getCustomerIdToGetAllAccountInfo(Integer.parseInt(customerId));
			HttpSession httpSession=request.getSession();
		httpSession.setAttribute("userId",list);
		httpSession.setAttribute("name",user.getName());
		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/customer/CustomerHome.jsp");
//	try {
//			showCustomerAccountInfo(request,response,customerId);
			requestDispatcher.forward(request, response);
//		} catch (NumberFormatException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		}
		if(status!=null&&status.equals("admin")) {
			
//			request.setAttribute("adminpagerequestList",requestList);
//			request.setAttribute("adminpageaccountRequestList", accountRequestList);
			requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/admin/AdminHome.jsp");
			requestDispatcher.forward(request, response);
		}
//		else { 
//			requestDispatcher=request.getRequestDispatcher("response.html");
//			requestDispatcher.forward(request, response);
//		}
		
		if(status==null){
//		catch(ServletException|IOException|UserDefinedException|NullPointerException ex)  
			System.out.println("check 1");
			request.setAttribute("message","Incorrect Details");
			request.getRequestDispatcher("views/bankingprototype/login/login.jsp").forward(request, response);
//		}
		}
		}
		else {
			System.out.println("Blocked");
			request.setAttribute("message","Login Blocked");
			request.getRequestDispatcher("views/bankingprototype/login/login.jsp").forward(request, response);
			}
		
	}

// customer jsp
	
//private void showCustomerAccountInfo(HttpServletRequest request, HttpServletResponse response,String customerId) throws UserDefinedException, ServletException, IOException {
//	int id=Integer.parseInt(customerId); 
//	System.out.println(id);
//	List<Account>list=bInterface.getCustomerIdToGetAllAccountInfo(id);
////	int length=list.size();
////	for(Account account:list) {
////		request.setAttribute("accountNumber",account.getAccountNumber());
////		request.setAttribute("branch",account.getBranch());
////		request.setAttribute("accountType",account.getAccountType());
////		request.setAttribute("balance",account.getBalance());
////		request.setAttribute("status",account.getAccountStatus());
////		request.setAttribute("ifsc",account.getIfsc());
//		request.setAttribute("accounts",list);
////		System.out.println(account.getAccountNumber());
//		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/customer/Customer.jsp");
////		}
//}
	
// update my details
	
	

}

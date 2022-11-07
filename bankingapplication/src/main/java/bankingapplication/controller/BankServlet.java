package bankingapplication.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import check.UserDefinedException;
import dao.BankInterface;
import dao.BankLogical;
import model.Login;

/**
 * Servlet implementation class BankServlet
 */
//@WebServlet("/register")
public class BankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BankInterface bInterface=new BankLogical();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BankServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/login/login.jsp");
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerId=request.getParameter("customerId");
		String passcode=request.getParameter("passcode");
		Login login=new Login();
		login.setCustomerId(Integer.parseInt(customerId));
		login.setPassCode(passcode);
		try {
			bInterface.userLogin(login);
		} catch (UserDefinedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String status=null;
		try {
			status=bInterface.userLogin(login);
		} catch (UserDefinedException e) {
			e.printStackTrace();
		}
		System.out.println(status);
		RequestDispatcher requestDispatcher;
		if(status.equals("customer")) {
		requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/customer/CustomerHome.jsp");
		requestDispatcher.forward(request, response);
		}
		if(status.equals("admin")) {
			requestDispatcher=request.getRequestDispatcher("/views/bankingprototype/admin/AdminHome.jsp");
			requestDispatcher.forward(request, response);
		}
		else { 
			requestDispatcher=request.getRequestDispatcher("response.html");
			requestDispatcher.forward(request, response);
		}
	}

}

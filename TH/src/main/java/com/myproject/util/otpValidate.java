package com.myproject.util;

import org.hibernate.Query;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

@WebServlet("/otpValidate")
public class otpValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public otpValidate() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		
		
		

		
		String EnteredOTP = request.getParameter("otpvalidate");
		HttpSession session = request.getSession();
		String otp = (String) session.getAttribute("realotp");

		if(EnteredOTP.equals(otp)) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/newPassword.jsp");
			rd.forward(request, response);
				
		}else {
			out.print("OTP is not matching");
		}
		
	}

}

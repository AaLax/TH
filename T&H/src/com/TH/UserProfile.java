package com.TH;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserProfile() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String un = request.getParameter("username");
		String pw = request.getParameter("password");
		
		if(un.equals("laxman") && pw.equals("laxm")) {
			out.print("User has sucessfully loggedin");
		}else {
			out.print("Username and password is incorrect");
		}
		
		
		
	}

}

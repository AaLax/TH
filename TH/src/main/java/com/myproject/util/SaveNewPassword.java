package com.myproject.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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

@WebServlet("/saveNewPassword")
public class SaveNewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveNewPassword() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String newPassword = request.getParameter("newpassword");
		String confirmPassword = request.getParameter("newConfirmPassword");
		
		
		if(newPassword.equals(confirmPassword)) {
			
			HttpSession npsession = request.getSession();
			String forgotmail = (String) npsession.getAttribute("forgotmail");
			
			SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			
			Query q = s.createQuery("update Signupjava set spw=:cp where mail=:fgmail");
			q.setParameter("cp", confirmPassword);
			q.setParameter("fgmail", forgotmail);
			q.executeUpdate();
			
			t.commit();
			s.close();
			
			RequestDispatcher rd = request.getRequestDispatcher("/Profile.jsp");
			rd.forward(request, response);
			
		}else {
			out.print("new password and confirm is not matching");
			out.println("please go back and enter again");
		}
	}
	

}

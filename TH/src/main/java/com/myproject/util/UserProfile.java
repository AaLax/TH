package com.myproject.util;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.CriteriaQuery;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;

import com.myproject.model.Signupjava;

@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserProfile() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String un = request.getParameter("username");
		String pw = request.getParameter("password");
		String username = null;
		String password = null;

		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();

		Query q = s.createQuery("from Signupjava where mail=:un and spw=:pw");
		q.setParameter("pw", pw);
		q.setParameter("un", un);
		List l = q.list();
		Iterator itr = l.iterator();

		while (itr.hasNext()) {
			Signupjava sj = (Signupjava) itr.next();
			username = sj.getMail();
			password = sj.getSpw();
		}

		if (un.equals(username) && pw.equals(password)) {
			out.print("User has sucessfully loggedin");
			
			RequestDispatcher rd = request.getRequestDispatcher("/Profile.jsp");
			rd.forward(request, response);
		} else {
			out.print("Username or password is incorrect");
		}

	}

}

package com.myproject.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.mail.event.MailEvent;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.TransactionRolledbackException;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.myproject.model.*;

import javax.mail.*;
import javax.mail.internet.*;
import javax.persistence.TypedQuery;
import javax.activation.*;

/**
 * Servlet implementation class forgotAcc
 * 
 * @param <X>
 */
@WebServlet("/forgotacc")
public class forgotAcc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public forgotAcc() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String forgotmail = request.getParameter("forgotemail");
		String forgotmail1 = null;

		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();

		Criteria cr = s.createCriteria(Signupjava.class);
		cr.add(Restrictions.like("mail", forgotmail));

		List list = cr.list();

		Iterator itr = list.iterator();

		while (itr.hasNext()) {
			Signupjava sj = (Signupjava) itr.next();
			forgotmail1 = sj.getMail();

		}

		tx.commit();

		if (forgotmail1.equals(forgotmail)) {

			String subject = "Retrieving your account logins";
			String realotp = Integer.toString(new Random().nextInt(900000) + 100000);
			String msg = "OTP from TH is " + realotp
					+ "  Please note if not trying to recover your account then we recommend you to report to us on Laxmanraghavraju@gmail.com ";

			HttpSession session = request.getSession();
			session.setAttribute("realotp", realotp);

			HttpSession npsession = request.getSession();
			session.setAttribute("forgotmail", forgotmail);

			Mailer.send(forgotmail, subject, msg);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/otpInput.jsp");
			requestDispatcher.forward(request, response);

			out.close();

		} else {

			out.print("We are sorry it seems your email entered is not registered with us ");
			out.print("Please enter corect email with is registered with us or you can simply Sign up as new User");

			out.close();
		}
		;

		out.close();

	}

}

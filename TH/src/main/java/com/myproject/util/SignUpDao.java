package com.myproject.util;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.myproject.model.Signupjava;

@WebServlet("/SignUpDao")
public class SignUpDao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String fname1 = request.getParameter("firstname");
		String lname1 = request.getParameter("lastname");
		String mail1 = request.getParameter("email");
		String mob1 = request.getParameter("mobile");
		String dob1 = request.getParameter("dob");
		String spw1 = request.getParameter("password");
		String cpw1 = request.getParameter("cpassword");

		// out.println(fname1);
		// out.println(lname1);
		// out.println(mail1);
		// out.println(mob1);
		// out.println(dob1);
		// out.println(spw1);
		// out.println(cpw1);

		if (spw1.equals(cpw1)) {

			Signupjava sa = new Signupjava();
			sa.setFname(fname1);
			sa.setLname(lname1);
			sa.setMail(mail1);
			sa.setMob(mob1);
			sa.setDob(dob1);
			sa.setSpw(spw1);

			out.println(sa.getFname());
			out.println(sa.getLname());
			out.println(sa.getMail());
			out.println(sa.getMob());
			out.println(sa.getDob());
			out.println(sa.getSpw());

//		Configuration con = new Configuration().configure().addAnnotatedClass(Signupjava.class);
//		ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();

			SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();

			s.save(sa);

			t.commit();

			s.close();

			out.println("User details saved to database");

//		s.save(sa.getLname());
//		s.save(sa.getMail());
//		s.save(sa.getMob());
//		s.save(sa.getDob());
//		s.save(sa.getSpw());

		} else {

			out.println("your password is not matching");
		}
	}
}

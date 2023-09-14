package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			// fetch title & textarea contents here
			
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			System.out.println(title+""+content);
			Note note=new Note(title,content,new Date());
			
			// Hibernet Save
			
			SessionFactory sessionFactory = FactoryProvider.getSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction tx = session.beginTransaction();
				
					session.save(note);
					tx.commit();
				 session.beginTransaction();
				 
				session.close();
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<h1 style='text-align:center'>Note Added Successfully</h1>");
				out.println("<h1 style='text-align:center'><a href='all_notes.jsp'>View All notes</a></h1>");
				
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}

package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.factoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
		   String title = request.getParameter("txttitle");
		   String content=request.getParameter("txtcontent");
		   
		   Note note = new Note(title,content,new Date());
		   
		   Session s = factoryProvider.getFactory().openSession();
		   Transaction tx = s.beginTransaction();
		   s.save(note);
		   tx.commit();
		   s.close();
		   PrintWriter out = response.getWriter();
		   out.println("<script type=\"text/javascript\">");
           out.println("alert('Note added Successfully ..');");
           out.println("location='show_note.jsp';");
            //response.sendRedirect("login.jsp");
           out.println("</script>");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}

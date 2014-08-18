package com.axa.cps.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.axa.cps.mail.Mailer;

/**
 * Servlet implementation class SurveyAppServlet
 */
public class SurveyAppServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SurveyAppServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, 
    	      HttpServletResponse response) throws ServletException, IOException 
    	  {
    	     doPost(request, response);
    	  }
    	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// reading the user input
//	    String color= request.getParameter("color");    
//	    PrintWriter out = response.getWriter();
//	    out.println (
//	      "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n" +
//	      "<html> \n" +
//	        "<head> \n" +
//	          "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"> \n" +
//	          "<title> My first jsp  </title> \n" +
//	        "</head> \n" +
//	        "<body> \n" +
//	          "<font size=\"12px\" color=\"" + color + "\">" +
//	            "Hello World" +
//	          "</font> \n" +
//	        "</body> \n" +
//	      "</html>" 
//	    ); 
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	      
	    String to="Luke.Greiner@axa-equitable.com"; 
	    String subject=request.getParameter("subject");  
	    String msg=request.getParameter("msg");  
	          
	    try {
			Mailer.send(to, subject, msg);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	    out.print("message has been sent successfully");  
	    out.close();  
	    } 
	}


package com.axa.cps.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.axa.cps.mail.Mailer;

/**
 * Servlet implementation class SurveyAppServlet
 */
public class SurveyAppServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//resizeable array lists
	private final ArrayList<String> newHireRecipients = new ArrayList<String>();
	private final ArrayList<String> developerRecipients = new ArrayList<String>();
	private final ArrayList<String> testerRecipients = new ArrayList<String>();
	
	
	       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SurveyAppServlet() {
    	//calls parent constructor
		super();
    	//populate newHire email list
    	newHireRecipients.add("Luke.Greiner@axa-equitable.com");
    	newHireRecipients.add("Paul.Soderberg@axa-equitable.com");
    	
    	//populate developer email list
    	developerRecipients.add("Luke.Greiner@axa-equitable.com");
    	developerRecipients.add("Eric.Bishop@axa-equitable.com");
    	
    	//populate recipient email list
    	testerRecipients.add("Eric.Bishop@axa-equitable.com");
    	testerRecipients.add("Paul.Soderberg@axa-equitable.com");
    	   	
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
		//list to send emails to
		ArrayList<String> emailList = new ArrayList<String>();
		
		//populate fields of email from jsp
		String to= request.getParameter("to_email");  
		String subject= request.getParameter("subject_email");  
		String messageText= request.getParameter("text_email");  
		String result="";
		//set email list to correct array list
		if(to.equals("newHires")){
			emailList=newHireRecipients;
		}
		else if(to.equals("developers")){
			emailList=developerRecipients;
		}
		else {
			emailList=testerRecipients;
		}
		

	   // Sender's email ID needs to be mentioned
	   String from = "test@axa-equitable.com";

	   // Assuming you are sending email from localhost
	   String host = "mailhost.equitable.com";

	   // Get system properties object
	   // Hashtable to add keys to
	   Properties properties = System.getProperties();

	   //Set credentials
	   //properties.setProperty("mail.user", "oaaadm");
	   //properties.setProperty("mail.password", "changeme");
	   
	   // Setup mail server
	   properties.setProperty("mail.smtp.host", host);
	   //Setup port number
	   properties.setProperty("mail.smtp.port", "25");

	   // Get the default Session object.
	   Session mailSession = Session.getDefaultInstance(properties);

	   //send an email to each person in mailing list
		   try{
		      // Create a default MimeMessage object.
		      MimeMessage message = new MimeMessage(mailSession);
		      // Set From: header field of the header.
		      message.setFrom(new InternetAddress(from));
		      // Set To: header field of the header.
		      for(String toString:emailList){
		    	  message.addRecipient(Message.RecipientType.TO,
		    			  			   new InternetAddress(toString));
		      }
		      // Set Subject: header field
		      message.setSubject(subject);
		      // Now set the actual message
		      message.setText(messageText);
		      // Send message
		      Transport.send(message);
		      result = "Sent message successfully....";
		      
		      
		   }catch (MessagingException mex) {
		      mex.printStackTrace();
		      result = "Error: unable to send message...." + mex;
		      
		      
		   }
	   
	   //print out for debugging
	   PrintWriter out = response.getWriter();
	    out.println (
	      "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n" +
	      "<html> \n" +
	        "<head> \n" +
	          "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"> \n" +
	          "<title> My first jsp  </title> \n" +
	        "</head> \n" +
	        "<body> \n" +
	          
	            " "+result+" "+to+" "+subject+" "+messageText+
	          
	        "</body> \n" +
	      "</html>" 
	    ); 
	}
}


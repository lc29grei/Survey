package com.axa.cps.mail;

import java.net.PasswordAuthentication;
import java.util.Properties;  

import javax.mail.*;  
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;  

import org.apache.catalina.Session;

import com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException;
import com.sun.xml.internal.ws.api.message.Message;
  
public class Mailer {  
public static void send(String to,String subject,String msg) throws AddressException, javax.mail.MessagingException, MessagingException{  
  
final String user="e237628@onlineaccess-dev.axa-equitable.com";//change accordingly  
final String pass="rose38959";  
  
//1st step) Get the session object    
Properties props = new Properties();  
props.put("mail.smtp.host", "mail.onlineaccess-dev.axa-equitable.com");//change accordingly  
props.put("mail.smtp.auth", "true");  
  
javax.mail.Session session = javax.mail.Session.getDefaultInstance(props,  
 new javax.mail.Authenticator() {  
  protected javax.mail.PasswordAuthentication getPasswordAuthentication() {  
   return new javax.mail.PasswordAuthentication(user,pass);  
   }  
}); 

MimeMessage message = new MimeMessage(session);  
 message.setFrom(new InternetAddress(user));  
 message.addRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(to));  
 message.setSubject(subject);  
 message.setText(msg);  
   
 //3rd step)send message  
 Transport.send(message);  
  
 System.out.println("Done");  
      
}  
}  
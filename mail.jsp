<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.Properties" %>               
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.PasswordAuthentication" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.*" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title></title>
		<link rel="shortcut icon" href="images/uyari.ico" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
		<article id="main">
			<div id="page-wrapper">

				<%@ include file="menu.jsp" %>

	
						<section class="wrapper style5">
							<div class="inner">
							<section>
									
									<header>
								<%
            
            Properties props = new Properties();
                    props.put("mail.smtp.host", "smtp.gmail.com");
                    props.put("mail.smtp.socketFactory.port", "465");
                    props.put("mail.smtp.socketFactory.class",
                            "javax.net.ssl.SSLSocketFactory");
                    props.put("mail.smtp.auth", "true");
                    props.put("mail.smtp.port", "465");

                    Session mailSession = Session.getInstance(props,
                            new javax.mail.Authenticator() {
                                protected PasswordAuthentication 
                                      getPasswordAuthentication() {
                                    return new PasswordAuthentication
                                      (request.getParameter("gmail_hesapadi"),request.getParameter("gmail_sifre"));
                                }
                            });

                    try {

                        Message message = new MimeMessage(mailSession );
                        message.setFrom(new InternetAddress(request.getParameter("kimden")));
                        message.setRecipients(Message.RecipientType.TO,
                                InternetAddress.parse(request.getParameter("kime")));
                        message.setSubject(request.getParameter("konu"));
                        message.setText(request.getParameter("mesaj"));

                        Transport.send(message);

                        out.println("E-posta başarılı bir şekilde gönderildi.");

                    } catch (MessagingException e) {
                        throw new RuntimeException(e);
                    }
            %>
            Anasayfaya geri <front color="blue"><a href="index.jsp">dön</a></front>.
									</header>
									<br><br><br><br><br><br><br>
									</section>
							</div>
						</section>
					</article>
							<!-- Footer -->
					<%@ include file="footer.jsp" %>
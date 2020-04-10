<%@ page import ="java.sql.*" %>
<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Uyarı</title>
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
										String KAD = request.getParameter("KAD");    
										String SIFRE = request.getParameter("SIFRE");
										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost/170535004?useUnicode=true&characterEncoding=UTF-8", "root", "acar2353");
										Statement st = con.createStatement();
										ResultSet rs;
										rs = st.executeQuery("select * from kullanici where KAD='" + KAD + "' and SIFRE='" + SIFRE + "'");
										if (rs.next()) {
											session.setAttribute("KAD", KAD);
											//out.println("HOŞGELDİNİZ: " + KAD);
											//out.println("<a href='logout.jsp'>Log out</a>");
											response.sendRedirect("dogrulama_giris.jsp");
										} else {
											out.println("KULLANICI BULUNAMADI ! </br><a href='giris.jsp'><font color='red'>Tekrar Dene</font></a>");
										}
                                        %>

									</header>
									<br><br><br><br><br><br><br>
									</section>
							</div>
						</section>
					</article>
							<!-- Footer -->
					<%@ include file="footer.jsp" %>
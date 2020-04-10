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
										String A_KAD = request.getParameter("A_KAD");    
										String A_SIFRE = request.getParameter("A_SIFRE");
										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost/170535004?useUnicode=true&characterEncoding=UTF-8", "root", "acar2353");
										Statement st = con.createStatement();
										ResultSet rs;
										rs = st.executeQuery("select * from admin where A_KAD='" + A_KAD + "' and A_SIFRE='" + A_SIFRE + "'");
										if (rs.next()) {
											session.setAttribute("A_KAD", A_KAD);
											//out.println("HOŞGELDİNİZ: " + A_KAD);
											//out.println("<a href='logout.jsp'>Log out</a>");
											response.sendRedirect("admin_kontrol.jsp");
										} else {
											out.println("ADMİN BİLGİLERİ YANLIŞ ! </br><a href='admin.jsp'><font color='red'>Tekrar Dene</font></a>");
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
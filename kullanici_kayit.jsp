<%@ page import ="java.sql.*" %>
<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
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
									<%!

									Connection baglanti=null;

									PreparedStatement ifade=null;

									String AD,SOYAD,KAD,SIFRE;

									%>

									<%

									try{

									AD=request.getParameter("AD");

									SOYAD=request.getParameter("SOYAD");

									KAD=request.getParameter("KAD");

									SIFRE=request.getParameter("SIFRE");


									try{

									Class.forName("com.mysql.jdbc.Driver");

									}catch(ClassNotFoundException e){

									out.println("Jdbc Yüklenemedi");

									}

									baglanti=DriverManager.getConnection("jdbc:mysql://localhost/170535004?useUnicode=true&characterEncoding=UTF-8", "root", "acar2353");

									ifade=baglanti.prepareStatement("insert into kullanici(AD,SOYAD,KAD,SIFRE) values(?,?,?,?) ");

									ifade.setString(1, AD);

									ifade.setString(2, SOYAD);

									ifade.setString(3, KAD);

									ifade.setString(4, SIFRE);


									ifade.executeUpdate();

									}catch(SQLException e){

									out.println("Hata");

									}finally{

									ifade.close();

									baglanti.close();
									out.println("Kayıt Yapıldı!<br> <br><a href='giris.jsp'><font color='red'>Giriş Yap</font></a>");
									

									}

									%>

									</header>
									<%
									if ((session.getAttribute("A_KAD") == null) || (session.getAttribute("A_KAD") == "")) {
								    
									}
									else{out.println("<br> <br>Admin Sayfasına <a href='admin_kontrol.jsp'><font color='red'>Geri Dön</font></a>");}
									%>
									<br><br><br><br><br><br><br>
									</section>
							</div>
						</section>
					</article>
							<!-- Footer -->
					<%@ include file="footer.jsp" %>
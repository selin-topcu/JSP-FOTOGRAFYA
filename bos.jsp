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
									<%
  String KAD=request.getParameter("KAD");
  String SIFRE=request.getParameter("SIFRE");

	 
	 
  Connection conn = null;
  Statement st = null;
  int i = 0;

  try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String dbUrl = "jdbc:mysql://localhost/170535004";
        conn = DriverManager.getConnection(dbUrl, "root", "acar2353");

        st = conn.createStatement();
       i = st.executeUpdate("Update kullanici SET  SIFRE='"+SIFRE+"' WHERE KAD='"+KAD+"'");
	  
	  if(i==1) 
        out.println("Veri başarılı bir şekilde güncellendi.");
 
    } 
    catch (Exception ex) {
        ex.printStackTrace();
        out.println("Hata oluştu !");
    } 
    finally {
      
      if (st != null) st.close();
      if (conn != null) conn.close();
    
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
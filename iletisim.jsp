<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
<%@ page import ="java.sql.*" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>İletişim</title>
		<link rel="shortcut icon" href="images/mail.ico" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<%@ include file="menu.jsp" %>

							<article id="main">
						
						<section class="wrapper style5">
							<div class="inner">

								<section>
								
									<center><b>İletişim Formu</b></center><br>
									<form method="post" action="mail.jsp">
										<div class="row gtr-uniform">
											<div class="col-12 col-12-xsmall">
												İletişim adresimiz:<input type="text" name="kime"  value="<%

  Connection conn = null;
  Statement st = null;
  ResultSet rs = null;

  try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String dbUrl = "jdbc:mysql://localhost/170535004";
        conn = DriverManager.getConnection(dbUrl, "root", "acar2353");

        st = conn.createStatement();
        rs = st.executeQuery("SELECT * FROM mail");
        
        while(rs.next()) {
            out.println(rs.getString("mail"));
        }
  
    } 
    catch (Exception ex) {
        ex.printStackTrace();
        out.println("mail bulunamadı !");
    } 
    finally {
      if (rs != null) rs.close();
      if (st != null) st.close();
      if (conn != null) conn.close();
    }
    
%>"  />
											</div>
											<div class="col-6 col-12-xsmall">
												<input type="text" name="kimden"  placeholder="E-posta adresiniz"  />
											</div>
											<div class="col-6 col-12-xsmall">
												<input type="text" name="gmail_hesapadi"  placeholder="Hesap adını giriniz"  />@gmail.com
											
											</div>
											<div class="col-6 col-12-xsmall">
												<input type="text" name="konu"  placeholder="Konu"  />
											</div>
											
											<div class="col-12">
												<textarea name="mesaj"  placeholder="İçerik" rows="6"></textarea>
											</div>
											
											<div class="col-6 col-12-xsmall">
												<input type="password" name="gmail_sifre"  value="" placeholder="Şifre" />
											</div>
											<div class="col-12">
												<ul class="actions">
													<li><input  type="submit" value="Gönder" class="primary" />
												</ul>
											</div>
										</div>
									</form>
								</section>
								</div>
						</section>
					</article>
							<!-- Footer -->
					<%@ include file="footer.jsp" %>
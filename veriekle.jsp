<%@ page language="java" import="java.sql.*" contentType="text/html; charset=iso-8859-9" %>
<html><head><title>Ýlk jsp-mysql sayfasý</title></head>
<body>
<h1>Kiþiler</h1>
<%

  Connection conn = null;
  Statement st = null;
  int i = 0;

  try {
         Class.forName("com.mysql.jdbc.Driver").newInstance();
        String dbUrl = "jdbc:mysql://localhost/170535004";
        conn = DriverManager.getConnection(dbUrl, "root", "acar2353");

        st = conn.createStatement();
        i = st.executeUpdate("insert into kullanici(KAD,SOYAD) values('Coskun','Tezcan')");
        out.println("Kullanici eklendi.");
 
    } 
    catch (Exception ex) {
        ex.printStackTrace();
        out.println("Hata oluþtu !");
    } 
    finally {
      
      if (st != null) st.close();
      if (conn != null) conn.close();
      response.sendRedirect("veriliste.jsp");
    }

%>
</body></html>
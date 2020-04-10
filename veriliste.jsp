<%@ page language="java" import="java.sql.*" contentType="text/html; charset=iso-8859-9" %>
<html><head><title>Ýlk jsp-mysql sayfasý</title></head>
<body>
<h1>Kiþiler</h1>
<%

  Connection conn = null;
  Statement st = null;
  ResultSet rs = null;

  try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String dbUrl = "jdbc:mysql://localhost/170535004";
        conn = DriverManager.getConnection(dbUrl, "root", "acar2353");

        st = conn.createStatement();
        rs = st.executeQuery("SELECT * FROM kullanici");
        
        while(rs.next()) {
            out.println(rs.getString("KAD") + " " + rs.getString("AD") + rs.getString("SOYAD") + " "+rs.getString("SIFRE") + " <br>");
        }
  
    } 
    catch (Exception ex) {
        ex.printStackTrace();
        out.println("HATA OLUSTU !");
    } 
    finally {
      if (rs != null) rs.close();
      if (st != null) st.close();
      if (conn != null) conn.close();
    }
    
%>
<br>
<a href="veriekle.jsp">Veri eekle</a> --- <a href="veriguncelle.jsp">Veri guncelle</a> --- <a href="verisil.jsp">Veri sil</a><br><br>
</body></html>
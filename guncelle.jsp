<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/user";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/170535004?useUnicode=true&characterEncoding=UTF-8", "root", "acar2353");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from kullanici where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(3);
} System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update kullanici set password='"+Newpass+"' where id='"+id+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>
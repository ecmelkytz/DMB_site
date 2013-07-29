
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script type="text/javascript" src="/resources/js/lib/jquery-1.8.3.min.js"></script>
 <script type="text/javascript" src="/bootstrap-master/js/bootstrap-alert.js"></script>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#eeeeee">
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Connection.*"%>
<%@page import="com.mysql.jdbc.Statement.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane" %>
<%@page import="java.util.*" %>


<%


try{
Class.forName("com.mysql.jdbc.Driver");

String ad=request.getParameter("ad");

String email=request.getParameter("email");
String not=request.getParameter("not");
		   String yaz="insert into iletisim(ad,email,not) values('"+ad+"','"+email+"','"+not+"')";
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost/site","root", "");
           Statement st=con.createStatement();
			st.executeUpdate(yaz);

        	       
        		   st.close();
        		   con.close();
           request.getRequestDispatcher("./iletisim.jsp").forward(request,response);
}
catch(Exception e){
    System.out.println(e);

}
         %>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<jsp:include page="navbar.jsp"></jsp:include>

         
         <% 
			try {
				String connectionURL = "jdbc:mysql://localhost/site";
				Connection connection = null; 
				Statement statement = null; 
				ResultSet rs = null; 
				int count = 0;

				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(connectionURL, "root", "");
				statement = connection.createStatement(); 

				String QueryString = "SELECT * from g_all where g_id =1 "; 
				rs = statement.executeQuery(QueryString);
				%>

				<div class="row-fluid" >
				<% 

				while (rs.next()) 
				{ 
					count= count+1;
				%> 

				<div class="row-fluid" >
					<div class="span4" style="position:relative;left:1.2in;padding-left: 30px;padding-top: 50px;">
					<% session = request.getSession();
    				if (session.getAttribute("email") == null ){
    				%> 
					<form action="login" method="post">
					<% } 
    				else {
					%>
					<form action="order" method="post">
					<%} %>

						<h4><%=rs.getString(2)%></h4>
							<img style="padding-bottom: 20px;padding-bottom: 20px;height:250px;width: 250px;" src = <%=rs.getString(4)%> />
							<input type="hidden" name="name" value = "<%= rs.getString(2) %>"/>
							<input type="hidden" name="prime" value = "<%= rs.getInt(3) %>"/>
							<input type="submit" class = "btn btn-info" value ="SATIN AL" name="sub"/>
								<h4 style="padding-left: 120px;margin-top: -25px;" >KDV +<%=rs.getInt(3)%>TL</h4><br>
					</form>		

					</div>

				<% 
				if(count == 6)
					break;
				} 




				}
				catch(Exception ex){

				out.println("Unable to connect to database.");
				}
			%>

      
           </div>
           </div>
          

	<jsp:include page="footer.jsp"></jsp:include>    
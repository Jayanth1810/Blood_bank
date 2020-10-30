<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" href="style.css">
        
<style>
.column{
float:left;
width:50%;
height:20%;
}

.column2{
float:left;
width:50%
}
</style>

<%
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","root","root");
	statement = conn.createStatement();
	rs = statement.executeQuery("select * from request");
	//System.out.println(rs.getString("name"));
	int rowcount=0;
	if (rs.last()) {
  		rowcount = rs.getRow();
	  	rs.beforeFirst();
	}
%>
</head>
<body>

    <br><br>
    <p align="center" class="text_class" style="font-size:20px">Requests For Blood Donation</p><br>
        <div class="div_left_half" style="overflow:auto" id="small_card">
        </div>
       
<div id="card_main" style="width:97%; height: 71%; background-color: white; margin-left:10px; margin-right: 10px; border-radius: 10px; overflow:auto">
</div>
        <iframe src="./footer.html" style="margin-bottom: 0;width: 100%;height: 190px;"></iframe>


<script>
run()
function run() {
	var card_main = document.getElementById("card_main");
	<%while(rowcount>0) {%> 
		<% rs.next();%>
		
		var card_details_full = document.createElement('div');
		card_details_full.className = "card_small";
		card_details_full.style="height:150px";
		
		var card_details = document.createElement('div');
		card_details.className = "column";
		
		var card_details_right = document.createElement('div');
		card_details_right.className = "column2";
		
		var z = document.createElement('p');
		z.textContent="Required Blood Group : <%=rs.getString("blood_group")%>";
		z.className = "text_class";
		card_details.appendChild(z);
		var z = document.createElement('p');
		z.textContent="Name : <%=rs.getString("name")%>";
		z.className = "text_class";
		card_details.appendChild(z);
		var z = document.createElement('p');
		z.textContent="Mobile No. : <%=rs.getString("mobile")%>";
		z.className = "text_class";
		card_details.appendChild(z);
		
		var z = document.createElement('p');
		z.textContent="Date Of Requirement : <%=rs.getString("last_date")%>";
		z.className = "text_class";
		card_details_right.appendChild(z);
		var z = document.createElement('p');
		z.textContent="PINCODE : <%=rs.getString("pincode")%>";
		z.className = "text_class";
		card_details_right.appendChild(z);
		var z = document.createElement('p');
		z.textContent="Purpose : <%=rs.getString("purpose")%>";
		z.className = "text_class";
		card_details_right.appendChild(z);
		
		card_details_full.appendChild(card_details);
		card_details_full.appendChild(card_details_right);
	    card_main.appendChild(card_details_full);
	    <%rowcount--;%>
	<%}%>
}
</script>
</body>

</html>
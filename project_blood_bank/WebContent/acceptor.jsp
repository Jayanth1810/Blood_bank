<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="bank_db.SearchDao" %>
<%@page import="bank_db.Search" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<title> Acceptor </title>
	<head>
<link rel="stylesheet" href="style.css">

	</head>
	<body align="center">
<%
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","root","root");
%>
	
<%
	statement = conn.createStatement();
	SearchDao sDao = new SearchDao();
	Search s = new Search();
	s.setBlood_group(request.getParameter("donor_blood_type"));
	rs = sDao.check_db(s);
	Search s1 = new Search();
	if(rs!=null)
	{

		rs.next();
		s1.setBlood_group(rs.getString("blood_group"));
		s1.setUnits(rs.getString("units"));
	}
%>

<script>
	function show_stock() {
		var b = document.getElementById("bg");
		b.value = "<%=s1.getBlood_group()%>";
		console.log(b.value);
		var u = document.getElementById("units");
		u.value = "<%=s1.getBlood_group()%>";
	}
</script>
<div style="text-align:center;">
<form action="Req_search_form" method="post">
	Blood Group:
		<select name="donor_blood_type">
				  <option value="None">Select One</option>
				  <option value="A+">A+</option>
				  <option value="A-">A-</option>
				  <option value="AB+">AB+</option>
				  <option value="AB-">AB-</option>
				  <option value="B+">B+</option>
				  <option value="B-">B-</option>
				  <option value="O+">O+</option>
				  <option value="O-">O-</option>
				  <option value="A1+">A1+</option>
				  <option value="A1-">A1-</option>
				  <option value="A2+">A2+</option>
				  <option value="A2-">A2-</option>
				  <option value="A1B+">A1B+</option>
				  <option value="A1B-">A1B-</option>
				  <option value="A2B+">A2B+</option>
				  <option value="A2B-">A2B-</option>
				  <option value="bombay_blood_group">Bombay Blood Group</option>
				</select><br><br>
			<input type="submit" onclick="show_stock()" id="submit" value="Submit">
		</form>
		</div>
		
<div class="card" style="width: 95%;margin-Top:50px;height:100px;text-align:center;padding-Top:25px;">
<label id="bg" style="margin-Top:20px;"> Blood Group:<%=s1.getBlood_group()%> </label><br><br>
<label id="units"> Units available:<%=s1.getUnits()%> </label><br><br>
</div><br><br>
	<form action="<%= request.getContextPath() %>/Raise_request" method="post">
	<div class="card_xlarge">
	<div style="width:40%;margin-Top:180px;height:10%;float:left;" align=center><p>Fill in the details to raise a request.</p></div>
	<div class="div_left">
	<div class="div_left" align="left">Full Name:</div><div class="div_right" align="left"> <input type="text" name="fullname" placeholder="Name"></div><br><br>
	<div class="div_left" align="left">Contact No: </div><div class="div_right" align="left"><input type="number" name="contact" placeholder="contact"></div><br><br>
	<div class="div_left" align="left">Address:</div><div class="div_right" align="left"> <textarea name="address" rows="3" columns="50" placeholder="address"></textarea></div><br><br><br><br>
	<div class="div_left" align="left">Pincode:</div><div class="div_right" align="left"> <input type="number" name="pincode" placeholder="pincode"></div><br><br>
	<div class="div_left" align="left">Blood Group:</div><div class="div_right" align="left"> <input type="text" name="bloodgroup2" placeholder="blood_group"></div><br><br>
	<div class="div_left" align="left">Date when required:</div><div class="div_right" align="left"> <input type="date" name="date"></div><br><br>
	<div class="div_left" align="left">Purpose: </div><div class="div_right" align="left"><textarea name="purpose" rows="3" columns="50" placeholder="purpose"></textarea></div><br><br><br><br>
	<input type="submit" value="submit">
	</div>
	</div>
	</form>
	<iframe src="./footer.html" style="margin-bottom: 0;width: 100%;height: 190px;"></iframe>
	
	</body>
	
	</html>
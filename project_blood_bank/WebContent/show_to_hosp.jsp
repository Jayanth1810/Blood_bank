<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="bank_db.SearchDao" %>
<%@page import="bank_db.Search" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html><html>
<title> Hos_aft_login </title>
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
</head>
<body align="center">

<%
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","root","root");
%>
<form action="Req_search" method="post">
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
		
</div><br><br><br><br><br>
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
<div class="card" style="width: 95%;height:150px;text-align:center;padding-Top:15px;">
<label id="bg" style="margin-Top:20px;"> Blood Group:<%=s1.getBlood_group()%> </label><br><br>
<label id="units"> Units available:<%=s1.getUnits()%> </label><br><br>
<input type="button" name="submit" onclick="move()" value="Click here to request blood">
</div><br><br>

<p class="text_class" style="font-size:20px"> Donor List</p>
<div id="card_main" style="width:97%; height: 71%; background-color: white; margin-left:10px; margin-right: 10px; border-radius: 10px; overflow:auto">
            
</div>
<iframe src="./footer.html" style="margin-bottom: 0;width: 100%;height: 190px;"></iframe>

<%
	rs = statement.executeQuery("select * from donors");
	//System.out.println(rs.getString("name"));
	int rowcount=0;
	if (rs.last()) {
  		rowcount = rs.getRow();
	  	rs.beforeFirst();
	}
%>
<script>
function move() {
	
	<%if(!s1.getUnits().equals("---------------------")) {%>
		console.log("hii");
		window.location="req_blood.html";
	
		<%}%>
}
run()
function run() {
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
		z.textContent="Blood Group : <%=rs.getString("blood_group")%>";
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
		z.textContent="Age : <%=rs.getString("age")%>";
		z.className = "text_class";
		card_details_right.appendChild(z);
		var z = document.createElement('p');
		z.textContent="Gender : <%=rs.getString("gender")%>";
		z.className = "text_class";
		card_details_right.appendChild(z);
		var z = document.createElement('p');
		z.textContent="Health History : <%=rs.getString("health_history")%>";
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
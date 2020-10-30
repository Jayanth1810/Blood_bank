<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" href="style.css">

      <title >ONLINE BLOOD BANK</title>
      <h1 align ="center" style="font-size:60px" ><b> ONLINE BLOOD BANK<b></h1>
      <br><br>
   </head>
   
      <div class="middle">
      <h2 align="center" style="color:black;"> IMPORTANCE OF DONATION OF BLOOD</h2>
      <p>1. Along with helping save lives, there are a number of reasons why donating blood is important.

      A single donation can save three lives.<br>
      2. One blood donation provides different blood components that can help up to three different people.
      Blood cannot be manufactured.<br>
      3. Despite medical and technological advances, blood cannot be made, so donations are the only way we can give blood to those who need it.
      Blood is needed every two seconds. <br>
      4. Nearly 21 million blood components are transfused in the U.S. every year.
      <br>
      5. Only 37 percent of the country’s population is able to donate blood.
      <br>
      6. Your friends or family may need your blood someday.</p>
      </div>

      <div class="cen">
      <p></p>
      </div>
      
      <div class="right">
      <form action="<%= request.getContextPath() %>/Login_form" method="post">
      <h2 align="center">Login</h2>
         <div align=center>YOU ARE : <input type="radio" value="donor" name="user"> DONOR <input type="radio" value="accept" name="user">
      ACCEPTOR   <input type="radio" value="hospital" name="user">HOSPITAL<br></div>
      <br>
      <div align=center>  Username      <input type="text" name="id"></input><br></div>
      <br>
      <div align=center>  Password       <input type="password" name="pass"></input></div>
      <br>

      <div align=center style="margin-right:40px;">      <input type="submit" align="center" value="submit">&emsp;&emsp;&emsp;&emsp;
         
            </div>
            </form>
      <br>
      <div align=center> NEW REGISTRAR ? &emsp; &emsp;
         <a href="donor_reg.jsp" style="color:white;">1. DONOR</a> &emsp;
         <a href="hosp_reg.jsp" style="color:white;" >2. HOSPITAL</a></div>
      </div>
      </form>
      <iframe src="./footer.html" style="width: 100%;height: 190px;margin-top:100px"></iframe>
   </body>
</html>
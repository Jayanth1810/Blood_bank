<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <br>
        <h1 style="color: white;">Donor Registration</h1>
    </head>
    <body align="center">
	<br>
        <br>
        <form action="<%= request.getContextPath() %>/Donor_form" method="post">
        <div class="card" align="center" style="margin:0 auto;">
            <br><br>
			<div class="div_left" align="left">Blood Group
			<label>*</label>
			</div>
			<div class="div_right" align="left">

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
				  <option value="Bombay">Bombay Blood Group</option>
				</select>
			</div>
            <br><br>
			
			
                <div class="div_left" align="left">Donor Name
                    <label>*</label>
                </div>
                <div class="div_right" align="left">
                <input type="text" placeholder="Name" name="donor_name"></div>
            <br><br>
            
                <div class="div_left" align="left">Age
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="number" placeholder="Age" name="donor_age" min="18" max="55"></div><br><br>
 
				<div class="div_left" align="left">Weight
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="number" placeholder="Weight" name="donor_weight" min="45" ></div><br><br>
               
                <div  class="div_left" align="left" valign="top">Gender
                    <label>*</label>
                </div>
                <div class="div_right" align="left">
                    <input type="radio" name="gender" value="M">Male
                    <input type="radio" name="gender" value="F">Female
					<input type="radio" name="gender" value="O">Others
            </div><br><br>
			
			<div class="div_left" align="left">Mobile No.
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="tel" placeholder="Mobile" name="donor_mobile">
            </div><br><br>
            
                <div  class="div_left" align="left" valign="top">Address
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><textarea rows="4" placeholder="Address" cols="20" name="donor_address"></textarea>
            </div><br><br><br><br>
			
                <div  class="div_left" align="left" valign="top">Health History
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><textarea rows="3" placeholder="Health related issues(Ex-Diabetic)" cols="20" name="donor_health"></textarea>
            </div><br><br><br>
            
                <div class="div_left" align="left">Email id
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="text" placeholder="Email is your Username" name="donor_mail">
            </div><br><br>  
            
                <div class="div_left" align="left">Password
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="password" placeholder="Type Your Password" name="donor_pass">
            </div><br><br>
            
                <div class="div_left" align="left">Confirm Password
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="password" placeholder="Confirm password" name="donor_conf_pass">
            </div><br><br><br>
		    
            <div>
                    <input  type=submit value="submit">
            </div>
            <br><br>
        </div>
        </form>
        <iframe src="./footer.html" style="width: 100%;height: 190px;margin-top:100px"></iframe>
    </body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <script>
            function set_vis_donate() {
                document.getElementById("hosp_donation").style.visibility = "visible";
            }
            function set_invis_donate() {
                document.getElementById("hosp_donation").style.visibility = "hidden";
            }
        </script>
        <br>
        <h1 style="color: white;">Hospital Registration</h1>
    </head>
    <body align="center">
        <br><br>
        <form action="<%= request.getContextPath() %>/Hosp_form" method="post">
        <div class="card" align="center" style="margin:0 auto;">
            <br><br><br>
                <div class="div_left" align="left">Hospital Name
                    <label>*</label>
                </div>
                <div class="div_right" align="left">
                <input type="text" placeholder="Name" name="hosp_name" id="hosp_name"></div>
            <br><br>
            
                <div class="div_left" align="left">Hospital License No.
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="text" placeholder="License" name="hosp_license" id="hosp_license"></div><br><br>
            
                <div  class="div_left" align="left" valign="top">Hospital Type
                    <label>*</label>
                </div>
                <div class="div_right" align="left">
                    <input type="radio" name="hosp_type" value="priv_type">Private Hospital<br>
                    <input type="radio" name="hosp_type" value="gov_type">Governament Hospital
            </div><br><br><br><br>
            
                <div  class="div_left" align="left" valign="top">Hospital Address
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><textarea rows="4" placeholder="Address" cols="22" name="hosp_address"></textarea>
            </div><br><br><br><br><br>
            
                <div class="div_left" align="left">Email id
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="text" placeholder="E-Mail" name="hosp_mail">
            </div><br><br>  
            
                <div class="div_left" align="left">Mobile No.
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="text" placeholder="Mobile" name="hosp_mobile">
            </div><br><br>
            
                <div class="div_left" align="left">Telephone</div>
                <div class="div_right" align="left"><input type="text" placeholder="Telephone" name="hosp_telephone">
            </div><br><br>
            
                <div class="div_left" align="left">Username
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="text" placeholder="Username" name="hosp_username">
            </div><br><br>
            
                <div class="div_left" align="left">Password
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="password" placeholder="Type Your Password" name="hosp_pass">
            </div><br><br>
            
                <div class="div_left" align="left">Confirm Password
                    <label>*</label>
                </div>
                <div class="div_right" align="left"><input type="password" placeholder="Confirm password" name="hosp_conf_pass">
            </div><br><br>
            
                <div class="div_left" align="left">Does Your Hospital store Blood
                    <label>*</label>
                </div>
                <div class="div_right" align="left">
                    <input type="radio" name="hosp_store" value="Yes" onchange=set_vis_donate()>Yes
                    <input type="radio" name="hosp_store" value="No" onchange=set_invis_donate()>No
                    
            </div><br><br>
            <div id="hosp_donation" style="visibility:hidden;">
                <div class="div_left" align="left">Is Your Hospital willing to<br> donate blood for emergencies 
                    <label>*</label>
                </div>
                <div class="div_right" align="left">
                    <input type="radio" name="hosp_can_donate" value="Yes" fid="hosp_can_donate">Yes
                    <input type="radio" name="hosp_can_donate" value="No" id="hosp_can_donate">No
                    </div>
            </div><br><br><br>
            <div>
                    <button id=submit>Submit</button>
            </div>
            <br><br>
        </div>
        </form>
    </body>
    <footer>
        <iframe src="./footer.html" style="width: 100%;height: 190px;margin-top:100px"></iframe>
    </footer>
</html>
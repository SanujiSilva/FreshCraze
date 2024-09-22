<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>

    <link rel="stylesheet" href="Styles/insertStyle.css">
</head>

<body>

<img src="images\logo.png" class="logo" >

    <h1 class="logo_topic">FreshCraze</h1>

    <nav class="navbar">
        <a href="index.jsp">Home</a>
        <a href="LoginPage.jsp">Login</a>
        <a href="customerinsert.jsp">Register</a>
        <span></span>
    </nav>

<hr class="topic_line">

<h1 class = "head">Customer Registration</h1>

<form action="insert" method="post" onsubmit="return validateForm()" name="registrationForm">
	<table class = "table">
     
   		<tbody>
		<tr class="active-row">
			<td>Name:</td>
			<td><input type="text" name="name" ></td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><textarea name="address" rows="5" cols="20" ></textarea></td>
		</tr>
		<tr class="active-row">
			<td>Phone Number</td>
			<td><input type="tel" name="phone" ></td>
		</tr>
		<tr>
			<td>NIC Number:</td>
			<td><input type="text" name="nic" ></td>
		</tr>
		<tr class="active-row">
			<td>Email:</td>
			<td><input type="email" name="email" ></td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td><select name = "gender" >
					<option value = "Male">Male</option>
					<option value = "Female">Female</option>
					<option value = "Other">Other</option>
				</select>
		</tr>
		<tr class="active-row">
			<td>Password:</td>
			<td><input type="password" name="pass" ></td>
		</tr>
		
		
    </tbody>
	</table>
	<input type="submit" name="submit" class="sub" value="Submit"><br><br><br>
</form>

<script>
function validateForm() {
    var name = document.forms["registrationForm"]["name"].value;
    var address = document.forms["registrationForm"]["address"].value;
    var phone = document.forms["registrationForm"]["phone"].value;
    var nic = document.forms["registrationForm"]["nic"].value;
    var email = document.forms["registrationForm"]["email"].value;
    var gender = document.forms["registrationForm"]["gender"].value;
    var pass = document.forms["registrationForm"]["pass"].value;
    
    if (name == "" || address == "" || phone == "" || nic == "" || email == "" || gender == "" || pass == "") {
        alert("All fields must be filled out");
        return false;
    }

    if (name == "") {
        alert("Name must be filled out");
        return false;
    }
    if (address == "") {
        alert("Address must be filled out");
        return false;
    }
    if (phone == "") {
        alert("Phone Number must be filled out");
        return false;
    }
    if (nic == "") {
        alert("NIC Number must be filled out");
        return false;
    }
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(email)) {
        alert("Email must be filled out");
        return false;
    }
    if (gender == "") {
        alert("Gender must be selected");
        return false;
    }
    if (pass == "") {
        alert("Password must be filled out");
        return false;
    }
}
</script>

<hr class="footer_line">

<div class="footer">
    <a href="link" target="_blank">
    <button type="button" class="help_button">Help and Support</button>
    </a>

    <div class="fb_icon">
        <a href="https://www.facebook.com/" target="_blank"><img src="images/facebook.png"></a>
    </div>

    <div class="insta_icon">
        <a href="https://www.instagram.com/" target="_blank"><img src="images/insta.png"></a>
    </div>

    <div class="twitt_icon">
        <a href="https://www.twitter.com/" target="_blank"><img src="images/Twitter.png"></a>
    </div>

    <div class="yt_icon">
        <a href="https://www.youtube.com/" target="_blank"><img src="images/yt.png"></a>
    </div>
</div>

<div class="contacts">
    <h1 class="link">www.freshcraze.lk</h1>
    <h1>Hotline: +94 225 225 25 / +94 225 225 35</h1>
</div>

</body>
</html>
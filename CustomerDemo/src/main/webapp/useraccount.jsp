<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Profile</title>

    <link rel="stylesheet" href="Styles/useraccount.Style.css">
</head>

<body>

<img src="images\logo.png" class="logo" >

<a href="profile.jsp" target="_blank">
<img src="images\user.png" class="user">
</a>

    <h1 class="logo_topic">FreshCraze</h1>

    <nav class="navbar">
        <a href="HomePageAL.jsp">Home</a>
        <a href="index.jsp">Logout</a>
        <a href="feedbackLog.jsp">Feedback</a>
        <span></span>
    </nav>

<hr class="topic_line">

	<table class = "table">
		<c:forEach var="cus" items="${cusDetails}">
		
		<c:set var="id" value="${cus.id}"/>
		<c:set var="name" value="${cus.name}"/>
		<c:set var="address" value="${cus.address}"/>
		<c:set var="phone" value="${cus.phone}"/>
		<c:set var="nic" value="${cus.nic}"/>
		<c:set var="email" value="${cus.email}"/>
		<c:set var="gender" value="${cus.gender}"/>
		<c:set var="password" value="${cus.password}"/>
		
		
        <h1 class = "head">Customer Profile</h1>
     
   		<tbody>
        <tr>
			<td>Customer ID:</td>
			<td>${cus.id}</td>
		</tr>
		<tr class="active-row">
			<td>Name:</td>
			<td>${cus.name}</td>
		</tr>
		<tr>
			<td>Address:</td>
			<td>${cus.address}</td>
		</tr>
		<tr class="active-row">
			<td>Phone Number</td>
			<td>${cus.phone}</td>
		</tr>
		<tr>
			<td>NIC Number:</td>
			<td>${cus.nic}</td>
		</tr>
		<tr class="active-row">
			<td>Email:</td>
			<td>${cus.email}</td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td>${cus.gender}</td>
		</tr>
		<tr class="active-row">
			<td>Password:</td>
			<td>${cus.password}</td>
		</tr>
    </tbody>
	</c:forEach>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" class="sub1" value="Edit My Profile">
	</a>
	
	<br><br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" class="sub2" value="Delete My Account"><br><br><br>
	</a>
	
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
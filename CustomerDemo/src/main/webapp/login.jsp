<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Login Page</title>

    <link rel="stylesheet" href="Styles/loginStyle.css">
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

<div class="container">
    <h2>Login</h2>
    <form action="login" method="post">
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your email password" required>
      </div>
      <div class="form-group-sub">
        <input type="submit" name="submit" value="Login">
      </div>
    </form>
  </div>
  
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
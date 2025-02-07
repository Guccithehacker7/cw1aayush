<?php

session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !==true)
{
    header("location: login.php");
}


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="homepage.css">
</head>
<body>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

<div class="wrapper">
    <div class="sidebar">
     <img src="logo.png" alt="#">
        <ul>
            <li><a href="#"><i class="fas fa-home"></i>Home</a></li>
            <li><a href="sports.html">sports</a></li>
            <li><a href="yeezys.html">yeezys</a></li>
            <li><a href="sneaker.html">sneakers</a></li>
            <!-- <li><a href="shocks.html">shocks</a></li> -->
            <li><a href="about.html">About</a></li>
            <li> <a href="log.html" >login/signup </a></li>
            <li> <a href="logout.php">log out</a></li>
            

        </ul> 
        <div class="social_media">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="main_content">
        <div class="header" style="color: #ff0000b5; font-size: 20px;">Welcome!! Sneaker heads. <br>
            <h1> <span class="auto"></span> </h1>
        </div>  
        <div class="info">
          
      </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script src="autotype.js"></script>
</script>
</body>
</html>
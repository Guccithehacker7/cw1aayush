<?php
//This script will handle login
session_start();

// check if the user is already logged in
if(isset($_SESSION['username']))
{
    header("location: welcome.php");
    exit;
}
require_once "config.php";

$username = $password = "";
$err = "";

// if request method is post
if ($_SERVER['REQUEST_METHOD'] == "POST"){
    if(empty(trim($_POST['username'])) || empty(trim($_POST['password'])))
    {
        $err = "Please enter username + password";
    }
    else{
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
    }


if(empty($err))
{
    $sql = "SELECT id, username, password FROM users WHERE username = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "s", $param_username);
    $param_username = $username;
    
    
    // Try to execute this statement
    if(mysqli_stmt_execute($stmt)){
        mysqli_stmt_store_result($stmt);
        if(mysqli_stmt_num_rows($stmt) == 1)
                {
                    mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                    if(mysqli_stmt_fetch($stmt))
                    {
                        if(password_verify($password, $hashed_password))
                        {
                            // this means the password is corrct. Allow user to login
                            session_start();
                            $_SESSION["username"] = $username;
                            $_SESSION["id"] = $id;
                            $_SESSION["loggedin"] = true;

                            //Redirect user to welcome page
                            header("location: welcome.php");
                            
                        }
                    }

                }

    }
}    


}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Document</title>
    <link rel="stylesheet" href="newlog.css">
</head>


<style>
  h4.username-err {
    font-size: 15px;
    font-family: initial;
    position: absolute;
    top: 194px;
    left: 156px;
    color: red;
    color: red;
  }
    
    h4.confirm-err{
  font-size: 15px;
    font-family: initial;
    position: absolute;
    top: 241px;
    left: 356px;
    color: red;
    color: red;}
    
    h4.password-err{
  font-size: 15px;
    font-family: initial;
    position: absolute;
    top: 153px;
    left: 869px;
    color: red;
    color: red;}
</style>
<body>
    <!-- <div>

<h4 class="username-err"></h4>
</div>
         -->

    <form id="form" action="" method="post">
    <div>

<h4 class="username-err"><?php if(isset($err) && !empty($err)) echo $err;?></h4>
</div>
        <h1>Sign In</h1>
       username
        <div id="email">
        <label for="exampleInputEmail1"></label>
            <input type="text" name="username" placeholder="Please enter your username" size="60px">
        </div>
        password 
        <div id="password">
        <label for="exampleInputPassword1"></label>
            <input type="password" name="password" placeholder="Please enter your password" size="60px" max length="16" minlength="8">
        </div>
        <div class="check_box">
            <input type="checkbox"> Remember Me
            <a id="forget_password" href="#">Forgot Password?</a>
        </div>
        <br>
        <!-- for sign in page and to get to the main page  -->
        <div id="submit">
            <button class="signin" type="submit" href="welcome.php" >Sign In</a></button>
        </div>
        <br>
        <div id="signup">
            Don't have account? <a id="sign_up" href="register.php">Register</a>
        </div>

        <!-- <div id="video">

            <video width="500px" height="500px"
       >
             
            <source src="off-white-jordan.gif"
                type="video/mp4">
        </video>
    </div>
 -->

    </form>
</body>

</html>
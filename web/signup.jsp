<%-- 
    Document   : signup
    Created on : Mar 15, 2019, 1:24:20 PM
    Author     : VIJAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sign up</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/background.css" type="text/css">
        <script src="script/background.js"></script>
    </head>
    <body style="background-image:url(image/college_background.jpg)">
<div class="background" style="background-image:url(image/signup_background.gif)">
        <form class="box" action="TestSignup" method="get" >
            <div class=" container  text-center m-5 p-5">
                <div class="row">
                    <div class="col mb-3 p-2"><h1>Sign Up , Now</h1></div>
                </div>
                <div class="row ">
                    <div class="col"><h2>First Name :</h2></div>
                    <div class="col"><input type="text" name="fname" placeholder="First Name" required></div>
                </div>
                <div class="row">
                    <div class="col"><h2>Middle Name :</h2></div>
                    <div class="col"><input type="text" name="mname" placeholder="Middle Name"></div>
                </div>
                <div class="row">
                    <div class="col"><h2>Last Name :</h2></div>
                    <div class="col"><input type="text" name="lname" placeholder="Last Name" required></div>
                </div>
                <div class="row">
                    <div class="col"><h2>Email Id :</h2></div>
                    <div class="col"><input type="email" name="email" placeholder="Email-Id" required></div>
                </div>
                <div class="row">
                    <div class="col"><h2>Mobile No. :</h2></div>
                    <div class="col"><input type="text" name="mobile" placeholder="Mobile No." size="10" required></div>
                </div>
                <div class="row">
                    <div class="col"><h2>User Name :</h2></div>
                    <div class="col"><input type="text" name="uname" placeholder="User Name" required></div>
                </div>
                <div class="row">
                    <div class="col"><h2>Password :</h2></div>
                    <div class="col"><input type="password" name="password" placeholder="Password" autocomplete="off" required></div>
                </div>
                <div class="row">      
                    <div class="col"><h2>Confirm Password :</h2></div>
                    <div class="col"><input type="password" name="confirmpsd" placeholder="Re-Enter password" required></div>
                </div>
                <div class="row">
                    <div class="col"><h2>Security Questions :</h2></div>
                    <div class="col"><select name="question" class="questions" required>
                            <option selected>Choose your Question.</option>
                            <option>What is your nick name?</option>
                            <option>What is your pet name?</option>
                            <option>What is your first school name?</option>
                            <option>What is your favourite subject name?</option>
                            <option>What is your favourite book name?</option>
                        </select></div>
                </div>
                <div class="row">
                    <div class="col"><h2>Security Answer :</h2></div>
                    <div class="col"><input type="password" name="answer" placeholder="Enter your answer." required></div>
                </div>

                <div class="row">
                    <div class="col"><button type="submit" >Sign Up</button></div>
                </div>
                <div class="row">
                    <div class="col"><button type="reset" >Reset</button></div>
                </div>

            </div>
        </form>
</div>
    </body>
</html>

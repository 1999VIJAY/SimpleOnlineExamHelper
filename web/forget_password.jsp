<%-- 
    Document   : change_password
    Created on : Mar 15, 2019, 10:19:16 PM
    Author     : VIJAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=0.0">
        <title>log in</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/background.css" type="text/css">
    </head>
    <body style="background-image: url(image/login_background.jpg)">
        
        <form class="box" action="TestForget" method="post" >
            <div class=" container  text-center m-5 p-5">
                <div class="row">
                    <div class="col mb-3 p-2"><h1>Forget Password</h1></div>
                </div>
                <div class="row">
                    <div class="col"><input type="text" name="uname" placeholder="Enter User Name"></div>
                </div>
                <div class="row">
                    <div class="col"><input type="password" name="password" placeholder="Enter New Password"></div>
                </div>
            <div class="row">
                <div class="col"><input type="password" name="confirmpsd" placeholder="Enter Confirm Password"></div>
            </div>
            <div class="row">
                <div class="col"><select name="question" class="questions" required>
                <option selected="select">Choose your Question.</option>
                <option>What is your nick name?</option>
                <option>What is your pet name?</option>
                <option>What is your first school name?</option>
                <option>What is your favourite subject name?</option>
                <option>What is your favourite book name?</option>
                    </select></div>
            </div>
            <div class="row">
                <div class="col"><input type="password" name="answer" placeholder="Enter your answer." required></div>
            </div>
            <div class="row">
                <div class="col"><button type="submit" >Save & Exit</button></div>
            </div>
            </div>
        </form>
    </body>
</html>



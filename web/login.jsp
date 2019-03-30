

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=0.0">
        <title>log in</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/background.css" type="text/css">
        <script src="script/background.js"></script>
    </head>
    <body style="background-image: url(image/college_background.jpg);">
        <div class="background" style="background-image: url(image/login_background.jpg);">
        <form class="box" action="TestLogin" method="POST" >
            <div class=" container  text-center m-5 p-5" >
                <div class="row">
                    <div class="col mb-3 p-2"><h1>Log in</h1></div>
                </div>
                <div class="row">
                    <div class="col"><input type="text" name="uname" placeholder="User Name" required></div>
                </div>
            <div class="row">
                <div class="col"><input type="password" name="password" placeholder="Password" required></div>
            </div>
                <div class="row">
                <div class="col"><button type="submit">Log In</button></div>
            </div>
            <div class="row">
                <div class="col"><h3 style="color: white;">Forget password ?<a href="forget_password.jsp"> Click</a> , here.</h3></div>
            </div>
            <div class="row">
                <div class="col"><h3 style="color: white;"> New user , Please <a href="signup.jsp">Sign up</a> now.</h3></div>
            </div>
            </div>
        </form>
        </div>
    </body>
</html>

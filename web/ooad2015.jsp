<%-- 
    Document   : java_mcq
    Created on : Mar 17, 2019, 10:16:16 PM
    Author     : VIJAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.isNew() || session.getAttribute("uname") == null) {
        response.sendRedirect("login.jsp");
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>java mcq</title>
        <link rel="icon" href="image/java.png" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style/mcq.css">
        <script src="script/home.js"></script>
    </head>

    <body style="background:radial-gradient(#958548, #7de7a7)">
        <!--for header -->
        <div class="container-fluid header">
            <div class="row">
                <div class="col-2 text-left"><img src="image/java.png" alt="logo"></div>
                <div class="col-10 text-left">OOAD MCQ of AKU</div>
            </div></div>
        <!-- for top navigation -->
        <div class="topnav" id="myTopnav">

            <div class="row">
                <div class="col-3 text-left">
                    <a style="color:lightgreen; cursor: pointer; float: left;" onclick="openNav()">
                        <i class="fa fa-user-circle"></i><% out.println("  " + session.getAttribute("uname"));%><!--&#9776-->
                    </a>
                </div>
                <div class="col">

                    <a  class="active" href="home.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
                    <a href=""><i class="fa fa-fw fa-search"></i> MCQ Test
                    </a>
                    <a href="test_result.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a>
                    <a href="logout.jsp"><i class="fa fa-fw fa-user"></i> Log out</a>
                    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                        <i class="fa fa-bars"></i>
                    </a></div>
            </div>

        </div>

        <!-- for side navigation -->

        <div id="mySidenav" class="sidenav">


            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

            <div class="container text-left">
                <div class="row">
                    <div class="col"> <a><h2>Hi,<% out.println("" + session.getAttribute("uname"));%></h2></a></div></div>
                <div class="row">
                    <div class="col"><a><% out.println("" + session.getAttribute("email"));%></a></div></div>
                <div class="row">
                    <div class="col"><a href="change_password.jsp">Change Password</a></div></div>
                <div class="row">
                    <div class="col"><a href="logout.jsp">Log Out</a></div></div>
            </div>
        </div>
        <form action="TestMcq" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col text-center mb-3">
                        <h1> *** OOAD 2016 mcqs *** </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>1. What does a simple name in UML Class and objects consists of ?</h2>
                        <h4>
                            <input type="radio" name="answer1" value="a">(a) Letters<br>
                            <input type="radio" name="answer1" value="b">(b) Digits<br>
                            <input type="radio" name="answer1" value="c">(c) Punctuation Characters<br>
                            <input type="radio" name="answer1" value="d">(d) All of the mentioned
                        </h4>
                        
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>2. What Does a Composite name consists of in a UML Class and object diagram ?</h2>

                        <h4> <input type="radio" name="answer2" value="a">(a) Delimiter<br>
                        <input type="radio" name="answer2" value="b">(b) Simple names<br>
                        <input type="radio" name="answer2" value="c">(c) Digits<br>
                        <input type="radio" name="answer2" value="d">(d) All of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>3. A Class consists of which of these abstractions?</h2>

                        <h4>
                            <input type="radio" name="answer3" value="a" >(a) Set of the objects<br>
                        <input type="radio" name="answer3" value="b" >(b) Operations<br>
                        <input type="radio" name="answer3" value="c" >(c) Attributes<br>
                        <input type="radio" name="answer3" value="d" >(d) All of the mentioned<br>
                        <input type="radio" name="answer3" value="e" >(e) (b) and (c)
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>4. A class is divided into which of these compartments ?</h2>
                        <h4>
                        <input type="radio" name="answer4" value="a" >(a) Name Compartment<br>
                        <input type="radio" name="answer4" value="b" >(b) Attribute Compartment<br>
                        <input type="radio" name="answer4" value="c" >(c) Operation Compartment<br>
                        <input type="radio" name="answer4" value="d" >(d) All of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>5.  An attribute is a data item held by which of the following ?</h2>
                        <h4>
                        <input type="radio" name="answer5" value="a" >(a) Class<br>
                        <input type="radio" name="answer5" value="b" >(b) Object<br>
                        <input type="radio" name="answer5" value="c" >(c) All of the mentioned<br>
                        <input type="radio" name="answer5" value="d" >(d) None of the mentioned
                        </h4>
                        </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>6. What should be mentioned as attributes for conceptual modeling ?</h2>
                        <h4><input type="radio" name="answer6" value="a" >(a) Initial Values<br>
                        <input type="radio" name="answer6" value="b" >(b) Names<br>
                        <input type="radio" name="answer6" value="c" >(c)  All of the mentioned<br>
                        <input type="radio" name="answer6" value="d" >(d)  None of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>7. An operation can be described as?</h2>
                        <h4>
                        <input type="radio" name="answer7" value="a" >(a) Object behavior<br>
                        <input type="radio" name="answer7" value="b" >(b) Class behavior<br>
                        <input type="radio" name="answer7" value="c" >(c) Functions<br>
                        <input type="radio" name="answer7" value="d" >(d) (a) and (b)<br>
                        <input type="radio" name="answer7" value="e" >(e) None of the mentioned
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>8.  Which of these are part of class operation specification format ?</h2>
                        <h4>
                        <input type="radio" name="answer8" value="a" >(a) Name<br>
                        <input type="radio" name="answer8" value="b" >(b) Parameter list<br>
                        <input type="radio" name="answer8" value="c" >(c) Return-type list<br>
                        <input type="radio" name="answer8" value="d" >(d) All of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>9. What among these is true ?</h2>
                        <h4>
                        <input type="radio" name="answer8" value="a" >(a) Associations may also correspond to relation between instances of three or more classes<br>
                        <input type="radio" name="answer8" value="b" >(b) Association lines may be unlabeled or they may show association name<br>
                        <input type="radio" name="answer8" value="c" >(c) All of the above<br>
                        <input type="radio" name="answer8" value="d" >(d) None of the above
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>10. If you need to show the physical relationship between software components and the hardware in the delivered system, which diagram can you use?</h2>
                        <h4>
                        <input type="radio" name="answer8" value="a" >(a) Component diagram<br>
                        <input type="radio" name="answer8" value="b" >(b) Deployment diagram<br>
                        <input type="radio" name="answer8" value="c" >(c) Class diagram<br>
                        <input type="radio" name="answer8" value="d" >(d) Network diagram
                        </h4>
                    </div>
                </div>
            </div>

                <div class="container">
                    <div class="row">
                        <div class="col text-right">
                            <input type="submit" name="submit" class="btn btn-info bg-success text-white" value="SUBMIT">
                        </div>
                        <div class="col text-left">
                            <input type="reset" name="reset"  class="btn btn-info bg-success text-white" value="RESET">
                        </div>
                    </div>
                </div>
            
        </form>
        <div class="container-fluid footer">
            <div class="row">

                <div class="col text-center"><h4>Thank You For Visiting !</h4></div>
            </div></div>
    </body>
</html>

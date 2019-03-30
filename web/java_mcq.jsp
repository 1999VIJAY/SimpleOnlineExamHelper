<%-- 
    Document   : java_mcq
    Created on : Mar 17, 2019, 10:16:16 PM
    Author     : VIJAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    if(session.isNew() || session.getAttribute("uname")==null)
        response.sendRedirect("login.jsp");

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
                <div class="col-10 text-left">JAVA MCQ of AKU</div>
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
        <form action="TestJavaMcq" method="get">
            <div class="container text-left">
                <div class="row">
                    <div class="col">
                        <h3>1. What is the range of short data type in Java?</h3>
                        <input type="radio" name="answer1" value="a">(a) -128 to 127<br>
                        <input type="radio" name="answer1" value="b">(b) -32768 to 32767<br>
                        <input type="radio" name="answer1" value="c">(c) -2147483648 to 2147483647<br>
                        <input type="radio" name="answer1" value="d">(d) None of the mentioned
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>2. What is the range of byte data type in Java?</h3>
                        <input type="radio" name="answer2" value="a">(a) -128 to 127<br>
                        <input type="radio" name="answer2" value="b">(b) -32768 to 32767<br>
                        <input type="radio" name="answer2" value="c">(c) -2147483648 to 2147483647<br>
                        <input type="radio" name="answer2" value="d">(d) None of the mentioned
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>3. Which of the following are legal lines of Java code?</h3>
                        <center><h4>
                                1. int w = (int)888.8;<br>
                                2. byte x = (byte)100L;<br>
                                3. long y = (byte)100;<br>
                                4. byte z = (byte)100L;</h4>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="radio" name="answer3" value="a" >(a) 1 and 2<br>
                        <input type="radio" name="answer3" value="b" >(b) 2 and 3<br>
                        <input type="radio" name="answer3" value="c" >(c) 3 and 4<br>
                        <input type="radio" name="answer3" value="d" >(d) All statements are correct
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>4. An expression involving byte, int, and literal numbers is promoted to which of these?</h3>
                        <input type="radio" name="answer4" value="a" >(a) int<br>
                        <input type="radio" name="answer4" value="b" >(b) long<br>
                        <input type="radio" name="answer4" value="c" >(c) byte<br>
                        <input type="radio" name="answer4" value="d" >(d) float
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>5. Which of these literals can be contained in float data type variable?</h3>
                        <input type="radio" name="answer5" value="a" >(a) -1.7e+308<br>
                        <input type="radio" name="answer5" value="b" >(b) -3.4e+038<br>
                        <input type="radio" name="answer5" value="c" >(c) +1.7e+308<br>
                        <input type="radio" name="answer5" value="d" >(d) -3.4e+050
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>6. Which data type value is returned by all transcendental math functions?</h3>
                        <input type="radio" name="answer6" value="a" >(a) int<br>
                        <input type="radio" name="answer6" value="b" >(b) float<br>
                        <input type="radio" name="answer6" value="c" >(c) double<br>
                        <input type="radio" name="answer6" value="d" >(d) long
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>7. What is the output of this program?</h3>
                        <h4>class average {<br>

                                public static void main(String args[])<br>

                                {<br>

                                double num[] = {5.5, 10.1, 11, 12.8, 56.9, 2.5};<br>

                                double result;<br>

                                result = 0;<br>

                                for (int i = 0; i < 6; ++i) <br>

                                result = result + num[i];<br>

                                System.out.print(result/6);<br>



                                } <br>

                                }</h4>
                        <input type="radio" name="answer7" value="a" >(a) 16.34<br>
                        <input type="radio" name="answer7" value="b" >(b) 16.566666644<br>
                        <input type="radio" name="answer7" value="c" >(c) 16.46666666666667<br>
                        <input type="radio" name="answer7" value="d" >(d)16.46666666666666
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>8. What will be the output of these statement?</h3>
                        <h4>class output {<br>

                            public static void main(String args[]) <br>

                            {<br>

                            double a, b,c;<br>

                            a = 3.0/0;<br>

                            b = 0/4.0;<br>

                            c=0/0.0;<br>



                            System.out.println(a);<br>

                            System.out.println(b);<br>

                            System.out.println(c);<br>

                            } <br>

                            }</h4>
                        <input type="radio" name="answer8" value="a" >(a) Infinity<br>
                        <input type="radio" name="answer8" value="b" >(b) 0.0<br>
                        <input type="radio" name="answer8" value="c" >(c) NaN<br>
                        <input type="radio" name="answer8" value="d" >(d) all of the mentioned
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>9. What is the output of this program?</h3>
                        <h4>
                            class increment {<br>

                            public static void main(String args[]) <br>

                            {        <br>

                            int g = 3;<br>

                            System.out.print(++g * 8);<br>

                            } <br>

                            }
                        </h4>
                        <input type="radio" name="answer9" value="a" >(a)  25<br>
                        <input type="radio" name="answer9" value="b" >(b) 24<br>
                        <input type="radio" name="answer9" value="c" >(c) 32<br>
                        <input type="radio" name="answer9" value="d" >(d)  33
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>10. What is the output of this program?</h3>
                        <h4>
                            class area {<br>

                            public static void main(String args[]) <br>

                            {    <br>

                            double r, pi, a;<br>

                            r = 9.8;<br>

                            pi = 3.14;<br>

                            a = pi * r * r;<br>

                            System.out.println(a);<br>

                            } <br>

                            }
                        </h4>
                        <input type="radio" name="answer10" value="a" >(a) 301.5656<br>
                        <input type="radio" name="answer10" value="b" >(b) 301<br>
                        <input type="radio" name="answer10" value="c" >(c) 301.56<br>
                        <input type="radio" name="answer10" value="d" >(d) 301.56560000
                    </div>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="col text-right"><input type="submit" name="submit" value="SUBMIT">
                        </div>
                        <div class="col text-left"><input type="reset" name="reset" value="RESET"></div>
                    </div></div></div>
        </form>
        <div class="container-fluid footer">
            <div class="row">

                <div class="col text-center"><h4>Thank You For Visiting !</h4></div>
            </div></div>
    </body>
</html>

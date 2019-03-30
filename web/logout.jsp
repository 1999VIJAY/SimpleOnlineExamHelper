<%
    session.setAttribute("uname",null);
    session.invalidate();
    response.sendRedirect("login.jsp");
    %>
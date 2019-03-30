/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VIJAY
 */
@WebServlet(name = "TestSignup", urlPatterns = {"/TestSignup"})
public class TestSignup extends HttpServlet {
public static Connection con;
    public static Statement smt;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try{
            String fname,mname,lname,email,mobile,uname,password,confirmpsd,question,answer;
            fname=request.getParameter("fname");
            mname=request.getParameter("mname");
            lname=request.getParameter("lname");
            email=request.getParameter("email");
            mobile=request.getParameter("mobile");
            uname=request.getParameter("uname");
            password=request.getParameter("password");
            confirmpsd=request.getParameter("confirmpsd");
            question=request.getParameter("question");
            answer=request.getParameter("answer");
            if(confirmpsd.equals(password)){
                
          // MySqlCon obj = new MySqlCon();
            //else{
            con=MySqlCon.connection();
            smt=con.createStatement();
            String query;
            query="INSERT INTO student values('"+fname+"','"+mname+"','"+lname+"','"+email+"','"+mobile+"','"+uname+"','"+password+"','"+question+"','"+answer+"')";
            smt.executeUpdate(query);
            
          /*  // obj.ps=obj.con.prepareStatement(query);
            obj.ps.executeQuery();
            obj.ps.setString(1, fname);
            obj.ps.setString(2, lname);
            obj.ps.setString(3, mname);
            obj.ps.setString(4, email);
            obj.ps.setString(5, mobile);
            obj.ps.setString(6, uname);
            obj.ps.setString(7, password);
            obj.ps.setString(8, confirmpsd);
            obj.ps.setString(9, question);
            obj.ps.setString(10, answer);*/
            smt.close();
            con.close();
            response.sendRedirect("login.jsp");
            }
            else{
            out.println("Please,re-enter confirm password .");
            }
                //response.sendRedirect("error.jsp");
        } 
        catch (SQLException ex) {
            Logger.getLogger(TestSignup.class.getName()).log(Level.SEVERE, null, ex);
            out.println(ex);
        }
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

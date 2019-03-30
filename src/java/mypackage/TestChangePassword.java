/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static mypackage.TestForget.con;
import static mypackage.TestForget.psmt;
import static mypackage.TestForget.rs;

/**
 *
 * @author VIJAY
 */
public class TestChangePassword extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String password,confirmpsd,question,answer;
        int flag=0;
        try{
            password=request.getParameter("password");
            confirmpsd=request.getParameter("confirmpsd");
            question=request.getParameter("question");
            answer=request.getParameter("answer");
            if(confirmpsd.equals(password)){
                con=MySqlCon.connection();
                psmt=con.prepareStatement("SELECT question,answer FROM student Where uname='"+TestLogin.uname+"'");
                rs=psmt.executeQuery();
                
            while(rs.next()){
                
                        if(question.equals(rs.getString("question"))&&answer.equals(rs.getString("answer")))
                            flag=1;
                        
                        else
                            out.println("Choose correct Security Question and Give correct answer .");
                        
                
                   
                }
               
            }
                    
            else
                    out.println("Please,re-enter confirm password .");
            
           rs.close();
            psmt.close();
            con.close();
            if(flag==1){
                con=MySqlCon.connection();
                psmt=con.prepareStatement("UPDATE student SET password='"+password+"' Where uname='"+TestLogin.uname+"'");
                psmt.executeUpdate();
                out.println("Passwor Updated Successfully...");
                con.close();
                psmt.close();
                response.sendRedirect("home.jsp");
            }
        } 
        catch(IOException | SQLException ex){
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

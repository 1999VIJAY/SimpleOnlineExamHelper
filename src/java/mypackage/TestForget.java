
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VIJAY
 */
public class TestForget extends HttpServlet {
    public static Connection con;
    public static PreparedStatement psmt;
    public static ResultSet rs;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int flag=0;
            try {
            String uname,password,confirmpsd,question,answer;
            uname=request.getParameter("uname");
            password=request.getParameter("password");
            confirmpsd=request.getParameter("confirmpsd");
            question=request.getParameter("question");
            answer=request.getParameter("answer");
            if(confirmpsd.equals(password)){
                con=MySqlCon.connection();
                psmt=con.prepareStatement("SELECT uname,question,answer FROM student");
                rs=psmt.executeQuery();
                
            while(rs.next()){
                if(uname.equals(rs.getString("uname"))){
                        if(question.equals(rs.getString("question"))&&answer.equals(rs.getString("answer")))
                            flag=1;
                        
                        else
                            out.println("Choose correct Security Question and Give correct answer .");
                        
                }
                else
                    out.println("Enter valid user name.");
                   
                }
               
            }
                    
            else
                    out.println("Please,re-enter confirm password .");
            
           rs.close();
            psmt.close();
            con.close();
            if(flag==1){
                con=MySqlCon.connection();
                psmt=con.prepareStatement("UPDATE student SET password='"+password+"' Where uname='"+uname+"'");
                psmt.executeUpdate();
                out.println("Passwor Updated Successfully...");
                con.close();
                psmt.close();
                response.sendRedirect("login.jsp");
            }
           /* else
                response.sendRedirect("error.jsp");*/
            
            
            }

        
        catch (SQLException ex) {
                Logger.getLogger(TestForget.class.getName()).log(Level.SEVERE, null, ex);
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

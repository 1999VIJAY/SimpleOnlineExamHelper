
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VIJAY
 */

public class TestLogin extends HttpServlet {

    public static Connection con;
    public static PreparedStatement psmt;
    public static ResultSet rs;
   public static String uname,password;
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        
        try  {
            
            uname=request.getParameter("uname");
            password=request.getParameter("password");
            con=MySqlCon.connection();
            psmt=con.prepareStatement("SELECT uname,password,email FROM student");
            rs=psmt.executeQuery();
           /* MySqlCon obj=new MySqlCon();
           
            obj.ps=obj.con.prepareStatement("SELECT uname,password from student");
            obj.rs=obj.ps.executeQuery();*/
            
            
            //boolean flag=rs.next();
          //  if(flag==0){
         int flag=0;
            while(rs.next()){
                if(uname.equals(rs.getString("uname"))&&password.equals(rs.getString("password"))){
                   session.setAttribute("uname",uname);
                   session.setAttribute("email",rs.getString("email"));
                    response.sendRedirect("home.jsp");
                     break;                
                   
                }
                else
                    flag=1;
            }
           if(flag==1)
            out.println("Enter valid user name or password.");//response.sendRedirect("error.jsp"); 
           
            psmt.close();
            con.close();
            rs.close();
        }
        catch (SQLException ex) {
                Logger.getLogger(TestLogin.class.getName()).log(Level.SEVERE, null, ex);
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

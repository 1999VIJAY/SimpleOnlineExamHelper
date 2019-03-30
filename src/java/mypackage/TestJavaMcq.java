package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VIJAY
 */
@WebServlet(name = "TestJavaMcq", urlPatterns = {"/test_result"})
public class TestJavaMcq extends HttpServlet {

    public static Connection con;
    public static PreparedStatement psmt;
    public static ResultSet rs;
    public int counter = 0;
    public int unattempt = 0;
    public String abcd;

    //public static String[] qes_no=new String[10];
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
/*TestJavaMcq obj=new TestJavaMcq();*/
        try {
            ArrayList<String> user_answer, correct_answer/* test_result*/;
            user_answer = new ArrayList<>();
            correct_answer = new ArrayList<>();
            /*test_result = new ArrayList<>();*/
            user_answer.add(request.getParameter("answer1"));
            user_answer.add(request.getParameter("answer2"));
            user_answer.add(request.getParameter("answer3"));
            user_answer.add(request.getParameter("answer4"));
            user_answer.add(request.getParameter("answer5"));
            user_answer.add(request.getParameter("answer6"));
            user_answer.add(request.getParameter("answer7"));
            user_answer.add(request.getParameter("answer8"));
            user_answer.add(request.getParameter("answer9"));
            user_answer.add(request.getParameter("answer10"));

            con = MySqlCon.connection();
            psmt = con.prepareStatement("SELECT * FROM java_mcq where course='java' and set_no=1");
            rs = psmt.executeQuery();
            while (rs.next()) {
                correct_answer.add(rs.getString("answer"));
            }
            con.close();
            psmt.close();
            rs.close();
            for (int j = 0; j < 10; j++) {
                if (user_answer.get(j) == null) {
                    unattempt++;
                }
              /*  out.println(user_answer.get(j));*/
            }
            for (int j = 0; j < 10; j++) {
                /* if (user_answer.get(j).equals(correct_answer.get(j)))*/
                if (user_answer.get(j) == null ? correct_answer.get(j) == null : user_answer.get(j).equals(correct_answer.get(j))) {
                    counter++;
                }
            }

             /*   getServletConfig().getServletContext().getRequestDispatcher("/test_result.jsp").forward(request, response);
             request.setAttribute(name, j);*/
            out.print(
                    "<html>"
                    + "<head>"
                    + "<title>"
                    + "test result"
                    + "</title>"
                    + "</head>"
                    + "<body  style=\"background:radial-gradient(#958548, #7de7a7)\">"
                            + "<center>"
                            + "<br><div style=color:blue><h1>Your Test Result </h1> </div><br><br>"
                            
                    + "<div style=color:white><h2> Questions Attempted : "+(10 - unattempt)+ "</h2> </div>"
                    + "<div style=color:black><h2>Questions Unattempted : "+ unattempt + "</h2> </div>"
                    + "<div style=color:green><h2>Correct answer : "+ counter + "</h2> </div>"
                    + "<div style=color:darkred><h2>Incorrect answer : "+(10 - unattempt - counter) + "</h2> </div>"
                    + "<div style=color:brown><h2>Marks Obtained : "+counter * 2 + "</h2> </div>"
                    + "<div style=color:maroon><h2>Total marks : "+20 + "</h2> </div>"
                    + "<div style=color:darkblue><h2>Percentage obtained : "+ (counter * 2) * 100 / 20 + "%" + "</h2> </div>"
                    + "<div style=color:darkgreen><h2>Accuracy obtained :  "+ (float) (counter) * 100 / (10 - unattempt) + "%" + "</h2> </div>"
                            + "<div><button><a href=home.jsp><h2>OK</h2></a></button></div>"
                          
                            + "</center>"
                    + "</body>"
                    + "</html>"
                    
            );
            /*abcd=String.valueOf(counter);
             out.print("Question attempted :"+counter);
             request.setAttribute("counter", "vijay");
getServletConfig().getServletContext().getRequestDispatcher("/test_result.jsp").forward(request, response);*/
            counter = 0;
            unattempt = 0;
            user_answer.clear();
            correct_answer.clear();
        }
        catch (SQLException ex) {
            out.println(ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
            
        
        } catch (SQLException ex) {
            Logger.getLogger(TestJavaMcq.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(TestJavaMcq.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

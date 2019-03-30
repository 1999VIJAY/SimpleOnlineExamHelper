
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static mypackage.TestMcq.con;
import static mypackage.TestMcq.psmt;
import static mypackage.TestMcq.rs;


public class TestMcq extends HttpServlet {

    public static Connection con;
    public static PreparedStatement psmt;
    public static ResultSet rs;
    public int correct = 0;
    public int incorrect = 0;
    public int unattempt = 0;
    public int total_marks = 0;
    public int obtained_marks = 0;
    public int attempt = 0;
    public int uans = 0;
    public int cans = 0;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            ArrayList<String> user_answer, correct_answer/* test_result*/;
            user_answer = new ArrayList<>();
            correct_answer = new ArrayList<>();
           
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
            psmt = con.prepareStatement("SELECT * FROM mcq where sub='OOAD' and year='2018'");
            rs = psmt.executeQuery();
            while (rs.next()) {
                correct_answer.add(rs.getString("correct_ans"));
            }
            con.close();
            psmt.close();
            rs.close();
            for (int j = 0; j < user_answer.size(); j++) {
                if (user_answer.get(j) == null) {
                    unattempt++;
                }
            /*    uans++;
              out.println(user_answer.get(j));*/
            }
           /* out.println("<br>user_answer:"+uans+"<br>");
            for (int j = 0; j < correct_answer.size(); j++) {
                
                out.println(correct_answer.get(j));
                cans++;
            }
            out.println("<br>correct_answer:"+cans);*/
            for (int j = 0; j < correct_answer.size(); j++) {
                /* if (user_answer.get(j).equals(correct_answer.get(j)))*/
                if (user_answer.get(j) == null ? correct_answer.get(j) == null : user_answer.get(j).equals(correct_answer.get(j))) {
                    correct++;
                }
            }
            
            attempt=user_answer.size()-unattempt;
            incorrect=attempt-correct;
            obtained_marks=correct*2;
            total_marks=correct_answer.size()*2;

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
                            + "<br><div style=color:blue><h1>Your Test Result </h1> </div>"
                            
                    + "<div style=color:white><h2> Questions Attempted : "+attempt+ "</h2> </div>"
                    + "<div style=color:black><h2>Questions Unattempted : "+ unattempt + "</h2> </div>"
                    + "<div style=color:green><h2>Correct answer : "+ correct + "</h2> </div>"
                    + "<div style=color:darkred><h2>Incorrect answer : "+incorrect + "</h2> </div>"
                    + "<div style=color:brown><h2>Marks Obtained : "+obtained_marks + "</h2> </div>"
                    + "<div style=color:maroon><h2>Total marks : "+ total_marks + "</h2> </div>"
                    + "<div style=color:darkblue><h2>Percentage obtained : "+ (float)obtained_marks * 100 / total_marks + "%" + "</h2> </div>"
                    + "<div style=color:darkgreen><h2>Accuracy obtained :  "+ (float) correct * 100 / attempt + "%" + "</h2> </div>"
                            + "<div><button><a href=home.jsp><h2>OK</h2></a></button></div>"
                          
                            + "</center>"
                    + "</body>"
                    + "</html>"
                    
            );
            /*abcd=String.valueOf(counter);
             out.print("Question attempted :"+counter);
             request.setAttribute("counter", "vijay");
getServletConfig().getServletContext().getRequestDispatcher("/test_result.jsp").forward(request, response);
          uans=0;
           cans=0;*/
            correct = 0;
            incorrect=0;
            attempt=0;
            total_marks=0;
            obtained_marks=0;
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
        processRequest(request, response);
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
        processRequest(request, response);
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

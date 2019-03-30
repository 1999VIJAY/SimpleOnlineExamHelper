/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;
import java.sql.*;
/**
 *
 * @author VIJAY
 */
public class MySqlCon {
    public static Connection conn;
    
    
    public static Connection connection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded...");
           conn=DriverManager.getConnection("jdbc:mysql://localhost/bce","root","");
           /* conn=DriverManager.getConnection("jdbc:mysql://node14127-env-1268090.cloudjiffy.net/bce","root","SIVyae41890");*/
            System.out.println("Connection established...");
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return conn;
    }
    
}

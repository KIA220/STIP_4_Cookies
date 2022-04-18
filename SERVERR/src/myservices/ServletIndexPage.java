package myservices;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

@WebServlet("/ServletIndexPage")
public class ServletIndexPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
    Statement statement;

    public void DBConnection() throws SQLException, ClassNotFoundException {
        String url = "jdbc:sqlite:C:\\Users\\usermainhall-1\\eclipse-workspace\\SERVERR\\userdata.db";          
        try {
            Class.forName("org.sqlite.JDBC");
            connection = DriverManager.getConnection(url);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public Statement getStatement() {
        try {
            statement = connection.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statement;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse responce) throws ServletException, IOException {    
        responce.setContentType("text/html");
        request.setCharacterEncoding("UTF8");
        PrintWriter out = responce.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset=\"utf-8\"/>");
        out.println("</head>");
        try {
            DBConnection();
            getStatement();
            String Email, Password, Phone, Region, Exch, StudentCheck, Single, StudentCheckIT, StudentCheckWork, Bio;
            Email = request.getParameter("Email");
            Password = request.getParameter("Password");
            Phone = request.getParameter("Phone");
            Region = request.getParameter("Region");
            Exch = request.getParameter("Exch");
            StudentCheck = request.getParameter("StudentCheck");
            Single = request.getParameter("Single");
            StudentCheckIT = request.getParameter("StudentCheckIT");
            StudentCheckWork = request.getParameter("StudentCheckWork");
            Bio = request.getParameter("Bio");
            statement.executeUpdate("INSERT INTO users (Email, Password, Phone, Region, Exch, StudentCheck, Single, StudentCheckIT, StudentCheckWork, Bio) values" + " ('" + Email + "', '"  + Password + "', '"  + Phone + "', '"  + Region + "', '"  + Exch + "', '" + StudentCheck + "', '"  + Single + "', '"  + StudentCheckIT + "', '"  + StudentCheckWork + "', '"  + Bio + "')");
            out.println("Database has been successfully updated");
            statement.close();
            getStatement();
            ResultSet res = statement.executeQuery("SELECT * FROM users");
            while (res.next()) {
                out.println("<div>" + res.getString("ID") + " - " + res.getString("Email")+ " - " + res.getString("Password")+ " - " + res.getString("Phone") + " - " + res.getString("Region")+ " - " + res.getString("Exch")+ " - " + res.getString("StudentCheck")+ " - " + res.getString("Single") + " - " + res.getString("StudentCheckIT")+ " - " + res.getString("StudentCheckWork")+ " - " + res.getString("Bio") + "</div>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("There was an error writing/reading data to the database");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        out.println("</html>");
        out.close();
    }
    public ServletIndexPage() {
        super();
    }
}

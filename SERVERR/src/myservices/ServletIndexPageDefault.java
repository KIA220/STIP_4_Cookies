package myservices;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import javax.servlet.http.Cookie;



@WebServlet("/ServletIndexPageDefault")
public class ServletIndexPageDefault extends HttpServlet {
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
    public ServletIndexPageDefault() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse responce) throws ServletException, IOException {
		
        //HttpSession session = request.getSession();
        //String name = (String) session.getAttribute("name");
		
		Cookie[] cookies = request.getCookies();
        String cookieName = "user";
        Cookie cookie = null;
		
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
            String Email, Password;
            Email = request.getParameter("Email");
            Password = request.getParameter("Password");
            ResultSet res = statement.executeQuery("SELECT Email, Password FROM users");
            try {
            	
                if(cookies !=null) {
                	while (res.next()) {
                    	if(Email.equals(res.getString("Email")) && Password.equals(res.getString("Password"))) {out.println("<div>" + "pass " + "</div>");}
                    	else {out.println("<div>" + "no match " + "</div>");}
                        out.println("<div>" + res.getString("Email")+ " - " + res.getString("Password") + "</div>");
                    }
                	String datatemp = Email + Password;
                    responce.addCookie(new Cookie("user", "datatemp"));
                    out.println("Cookie is set");
                }
                if(cookies !=null) {
                    for(Cookie c: cookies) {
                        if(cookieName.equals(c.getName())) {
                            cookie = c;
                            break;
                        }
                    }
                }
                try {
                    out.println("Name: " + cookie.getValue());
                }
                finally {
                    out.close();
                }
            }
            finally {
                out.close();
            }
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("There was an error writing/reading data to the database");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        out.println("</html>");
        out.close();
	}

}

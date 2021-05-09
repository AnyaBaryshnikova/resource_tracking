<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>

<%


    String user = request.getParameter("UserName");
    String pw = request.getParameter("Password");
    int role = 0;

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306";
        String username = "root";
        String password = "root";
        Connection conn = DriverManager.getConnection(url, username, password);
        Statement st = conn.createStatement();

        String loginQuery = "select * from users where username = \' " + user + "\' and pw = \' " + user + "\'";
        ResultSet rs = st.executeQuery(loginQuery);
        role = rs.getInt("role");
        conn.close();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }

    if(role == 1)
        response.sendRedirect("projectsadmin.jsp");
    response.sendRedirect("projectsuser.jsp");



%>
<%@ page import ="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolstudent",
            "root", "180");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into teacher( id,first_name, last_name, email, uname, pass) values ('" + id + "','" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "')");
    if (i > 0) {
       
        response.sendRedirect("welcome.jsp");
 
    } else {
        response.sendRedirect("teacherslogin.jsp");
    }
%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<HTML>
    <HEAD>
        <TITLE>10 class Results</TITLE>
    </HEAD>
        <%
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolstudent","root","180");
                    ResultSet resultset;
                    Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                   
                    resultset =
                            statement.executeQuery("SELECT * FROM studresult5 ");
                    if (!resultset.next()) {
                        out.println("Sorry, could not find the data. ");
                    } else {
        %>
        <TABLE cellpadding="15" border="1" style="background-color: #ffffcc" align="center">
            <TR>
                <TH>Id</TH>
                <TH>Name</TH>
                <TH>Telugu</TH>
                <TH>Hindi</TH>
                <TH>English</TH>
                <TH>Maths</TH>
                <TH>Science</TH>
                <TH>Social</TH>
                <TH>Total Marks</TH>
                <TH>Grade</TH>
            </TR>
            <%
                                        do {
            %>
            <TR>
                <TD> <%=  resultset.getString(1)%> </TD>
                <TD> <%= resultset.getString(2)%> </TD>
                <TD> <%= resultset.getString(3)%> </TD>
                <TD> <%=  resultset.getString(4)%> </TD>
                 <TD> <%=  resultset.getString(5)%> </TD>
                <TD> <%= resultset.getString(6)%> </TD>
                <TD> <%= resultset.getString(7)%> </TD>
                <TD> <%=  resultset.getString(8)%> </TD>
                <TD> <%= resultset.getString(9)%> </TD>
                <TD> <%=  resultset.getString(10)%> </TD>
            </TR>
            </TR>
            <%resultset.next();
                                        } while (resultset.isAfterLast() != true);
            %>
        </TABLE>
        <BR>
        <%
                    }
        %>
          </BODY>
</HTML>
        <h1>Thank You  <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a></h1>

<! DOCTYPE HTML >  
<!-- form-processor-one.jsp -->
<%@ page import="java.io.*, java.util.*" %>
<html>
    <head>
            <title>Display Personal Info</title>
            <link rel="stylesheet" href="css-2.css">
    </head>
    <body>
        <%
                // get parameters from the request object
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String collegeName = request.getParameter("collegeName");
        String phoneNumber = request.getParameter("phoneNumber");						
        %>

        <h1>Thank you for joining The Sports Pulse!</h1>
        <p>We're glad to have you as a member!</p>
        <br>
        <div class="center">
            <div class="personalInfo">
                <h3>This is the Personal Information you entered:</h3>
                <table class="outputTable">
                    <tr>
                        <td>First Name:</td>
                        <td><%= firstName %></td>			
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td><%= lastName %></td>					
                    </tr>
                    <tr>
                        <td>College Name:</td>
                        <td><%= collegeName %></td>					
                    </tr>
                    <tr>
                        <td>Phone Number:</td>
                        <td><%= phoneNumber %></td>					
                    </tr>
                </table>
                <br>
                <form action="index.html" method="get" style="left:-10px;">
                    <input type="submit" value="Go Back To The Join Page" class="submitButton">
                </form>
                <h3>Unsorted Parameters:</h3>                   
                <table class="outputTable">
                    <%
                        Enumeration parameterNames = request.getParameterNames();
                        while( parameterNames.hasMoreElements() ) {
                            String paramName = (String)parameterNames.nextElement();
                            out.print("<tr><td>" + paramName + "</td>\n");
                            String paramValue = request.getParameter(paramName);
                            out.println("<td> " + paramValue + "</td></tr>\n");
                        }
                    %>
                </table>
                <br>   
                <h3>Sorted Parameters:</h3>                   
                <table class="outputTable">
                    <%
                        List<String> list = Collections.list(request.getParameterNames() );
                        Collections.sort(list);
                        for (String valueName : list ) {
                            out.print("<tr><td>" + valueName + "</td>\n");
                            String paramValue = request.getParameter(valueName);
                            out.println("<td> " + paramValue + "</td></tr>\n");
                        }
                    %>
                </table>
                <br>
            </div>
        </div>
        <br><br>
        <footer>
            <em>asg10_sbridges</em>
        </footer>	
    </body>
</html>

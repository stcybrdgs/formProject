<! DOCTYPE HTML >  
<!-- form-processor-two.jsp -->
<%@ page import="java.io.*, java.util.*" %>
<html>
    <head>
        <title>Display Favorites Info</title>
        <link rel="stylesheet" href="css-2.css">
    </head>
    <body>
        <%
        // get parameters from the request object
        String favoriteSport = request.getParameter("favoriteSport");
        String favoriteTeam = request.getParameter("favoriteTeam");
        String favoritePlayer = request.getParameter("favoritePlayer");
        String reasonFavorite = request.getParameter("reasonFavorite");						
        %>

        <h1>Thank you for joining The Sports Pulse!</h1>
        <p>This is the Favorites Information you entered:</p>	
        <br>
        <div class="center">
            <div class="favoritesInfo">
                <h3>Favorites Information:</h3>
                <table class="outputTable">
                    <tr>
                        <td>Favorite Sport:</td>
                        <td><%= favoriteSport %></td>			
                    </tr>
                    <tr>
                        <td>Favorite Team:</td>
                        <td><%= favoriteTeam %></td>					
                    </tr>
                    <tr>
                        <td>Favorite Player:</td>
                        <td><%= favoritePlayer %></td>					
                    </tr>
                    <tr>
                        <td>Reason Favorite:</td>
                        <td><%= reasonFavorite %></td>					
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

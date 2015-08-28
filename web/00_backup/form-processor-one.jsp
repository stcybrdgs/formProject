<!DOCTYPE html>
<%@ page import="java.io.*, java.util.*" %>
<html>
    <head>
        <title>Confirmation Page</title>
        <link rel="stylesheet" type="text/css" href="css-2.css">	
    </head>
    <body>
         <%
        // get parameters from the request object
        String Manufacturer = request.getParameter("Manufacturer");
        String Model = request.getParameter("Model");
        String Year = request.getParameter("Year");
        String inquiryInfo = request.getParameter("inquiryInfo");						
        %>        
        <div id="mainDiv">
            <header>
                <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JSP Samples</h3>
                <img src="images/border.jpg" alt="">
                <menu id="topMenu">
                    <a href="index.html">
                        &nbsp;&nbsp;&nbsp;
                            Form Sample 1
                        &nbsp;&nbsp;&nbsp;
                    </a>
                    |
                    <a href="">
                        &nbsp;&nbsp;&nbsp;
                            Form Sample 2
                        &nbsp;&nbsp;&nbsp;
                    </a>
                    |
                    <a href="">
                        &nbsp;&nbsp;&nbsp;
                            Cookie Sample
                        &nbsp;&nbsp;&nbsp;
                    </a>                
                </menu>
                 <div id="ribbonDiv">
                    <br>
                    <a href="http://www.stacybridges.com" target="_blank" title="stacybridges.com">
                        <img src="images/penCup.jpg" alt="">
                    </a>
                    <br><br>                    
                    stacy bridges
                    <img src="images/ribbonTail.jpg" alt="">
                </div>   
            </header>
            <div id="leftMenu">
                NAVIGATION MENU
                <br><br>
                <ul>                
                    <li><a href="">&nbsp; stacybridges.com</a></li>
                    <li><a href="">&nbsp; stacymusic.com</a></li>
                    <li><a href="">&nbsp; mipsops.com</a></li>
                    <li><a href="">&nbsp; fretmachine.com</a></li>
                    <li><a href="">&nbsp; JSP Samples</a></li>
                    <li><a href="">&nbsp; GitHub</a></li>
                </ul>
            </div>
            <div id="confirmDiv">
                <br>
                <article>
                    <h2>Thank you for your inquiry.</h2>
                    <hr>
                    The details of your inquiry are provided below.
                    <br><br>
                     All inquiries are processed in the order received. 
                     Please allow 2-3 business days for processing.
                    <br><br>
                    <hr>
                </article>
                <br>

                <form>
                    <table id="formTable">
                        <tr>
                            <td colspan="2">
                                <div id="formTitles">                                
                                    <h3>Confirmation number:</h3>    
                                    <br><br>
                                    <h3>Inquiry Information:</h3>     
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Manufacturer:</td>
                          <td>
                                <select class="formBox" name="Manufacturer" id="man">
                                    <option value="cantilever">Cantilever Aero Company</option>
                                    <option value="caproni">Caproni Aviation</option>
                                    <option value="douglas">Douglas Aircraft</option>
                                    <option value="brewster">Brewster Aeronautical</option>									
                                </select>
                            </td>			
                        </tr>
                        <tr>
                            <td>Manufacturer:</td>
                            <td><%= Manufacturer %></td>			
                        </tr>
                        <tr>
                            <td>Model:</td>
                            <td><%= Model %></td>					
                        </tr>
                        <tr>
                            <td>Year:</td>
                            <td><%= Year %></td>					
                        </tr>
                        <tr>
                            <td>Inquiry Info:</td>
                            <td><%= inquiryInfo %></td>					
                        </tr>
                        <tr>
                            <td class="submitButton">
                                &nbsp;&nbsp;
                                <button type="button" value="Reset" onclick="window.location.href='index.html'">
                                    Back&nbsp;
                                </button>
                                <br><br>
                            </td>
                            <td></td>                            
                        </tr> 
                        <!-- ////////////////////////////////////// -->

                        <tr>
                            <td></td>
                            <td>
                                <br><br>
                                
                            </td>		
                        </tr>
                    </table>					
                </form>	
                <br>
                <br>
            </div><!-- end confirmDiv -->
            <br><br><br>
            <footer>
                <br>
                &copy;&nbsp;2015 &nbsp;&nbsp;Stacy Bridges
            </footer>
        </div><!-- end mainDiv -->  
    </body>
</html>

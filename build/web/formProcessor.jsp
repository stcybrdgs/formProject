<!-- 
    this file contains JSP processing code (formProcessor.jsp) for the 
    JSP Form Project
    Copyright 2015, Stacy Bridges
-->
<!DOCTYPE html>
<%@ page import="java.io.*, java.util.*" %>
<%  // generate a random number to use as a demo confirmation number
    Random generator = new Random(new Date().getTime());
    int randNum = (byte)generator.nextInt(); 
    int confirmNum = (Math.abs(randNum * randNum));

    // get parameters from the request object
    String VehicleType = request.getParameter("vehicle");
    String Manufacturer = request.getParameter("Manufacturer");
    String Model = request.getParameter("Model");
    String Year = request.getParameter("Year");
    String inquiryInfo = request.getParameter("inquiryInfo");
    
    if( inquiryInfo == "" ){
        inquiryInfo = "no reason provided";
    }
%> 
<html>
    <head>
        <title>JSP Confirmation Page</title>
        <link rel="stylesheet" type="text/css" href="styles.css">	
        <script src="formArrays.js"></script> 
        <script>
            function formReset(){
                document.getElementById("vehicleForm").reset(); 
                setFormOptions(0);
            }
        </script>
    </head>
    <body>
    	<div id="mainDiv">
            <!-- title -->
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JSP Form Project</h3>    
            
            <!-- banner -->
            <div id="bannerDiv">
                <menu id="topMenu">
                    <a href="about.html" title="Go to the About Page">
                        &nbsp;&nbsp;&nbsp;
                        About
                        &nbsp;&nbsp;&nbsp;
                    </a>
                    &nbsp;|
                    <a href="demo.html" title="Go to the JSP Form Demo">
                        &nbsp;&nbsp;&nbsp;
                        JSP Form Demo
                        &nbsp;&nbsp;&nbsp;
                    </a>
                </menu>
            </div>

            <div class="margin"></div>
            
            <!-- leftDiv: left-most column of the page -->
            <div id="leftDiv">
                <!-- display the ribbon -->
                <div id="ribbonDiv">
                    <br>
                    <a href="http://www.stacybridges.com" target="_blank" title="www.stacybridges.com">
                        <img src="images/penCup.jpg" alt="">
                    </a>
                    <br><br>                    
                    stacy bridges
                    <img src="images/ribbonTail.jpg" alt="">
                </div>
                
                <!-- display the secondary nav menu in the left-hand column -->
                <div id="leftMenu">
                    <span class="menuHeading" title="View my other Projects">
                        <u>OTHER PROJECTS</u>                    
                    </span>
                    <ul>
                        <li>
                            <a href="http://www.stacybridges.com" target="_blank" title="www.stacybridges.com">                                
                                &nbsp; stacybridges.com
                            </a>    
                        </li>
                        <li>
                            <a href="http://mipsops.com" target="_blank" title="www.mipsops.com">                                
                                &nbsp; mipsops.com
                            </a>    
                        </li>     
                        <li>
                            <a href="https://github.com/stcybrdgs" target="_blank" title="github.com/stcybrdgs">                                
                                &nbsp; GitHub
                            </a>    
                        </li>                        
                    </ul>
                </div><!-- end leftMenu -->
                <br>
                 <div id="docMenu">
                    <span class="menuHeading" title="View PDFs of the code for this Project">
                        <u>THIS PROJECT</u>                    
                    </span>
                        <ul>                
                        <li>
                            <a href="docs/demoHTML.pdf" target="_blank" title="demo.html"> 
                                &nbsp;                                   
                            <img src="images/pdfIconSmall.png" alt="PDF Download" class="pdfIcon">  
                                &nbsp;html
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                
                            </a>
                        </li>
                        <li>
                            <a href="docs/stylesCSS.pdf" target="_blank" title="styles.css">   
                                &nbsp;                                   
                            <img src="images/pdfIconSmall.png" alt="PDF Download" class="pdfIcon">                             
                                &nbsp;css
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                
                            </a>
                        </li>            
                        <li>
                            <a href="docs/formProcessorJSP.pdf" target="_blank" title="formProcessor.jsp">
                                &nbsp;                              
                            <img src="images/pdfIconSmall.png" alt="PDF Download" class="pdfIcon">                             
                                &nbsp;jsp
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                               
                            </a>
                        </li>
                        <li>
                            <a href="docs/formArraysJS.pdf" target="_blank" title="formArrays.js">
                                &nbsp;
                                <img src="images/pdfIconSmall.png" alt="PDF Download" class="pdfIcon">                             
                                &nbsp;javascript
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </li>                           
                    </ul>
                </div><!-- end docMenu -->               
            </div><!-- end leftDiv -->
            
            <div class="margin"></div>            
            <div class="separator"></div>	        
                
            <div id="rightDiv">
                <div id="rightDivContent">
                    <article>
                        <h1 id="confirmNum">
                            <strong>Confirmation Number: 
                                <%-- print a random confirmation number;
                                     note: this is a demo only; 
                                    if this functionality were actually
                                     hooked into a SQL db, key-sequence logic
                                     would be used instead
                                --%>
                                <%= confirmNum %><%= confirmNum*13 %>
                            </strong>
                        </h1>
                        <hr>
                        Thank you for your inquiry. Your details are provided below.<br><br>
                        All inquiries are processed in the order received.
                        Please allow 2-3 business days for processing.
                        <br><br>
                    <hr>                        
                    </article>

                    <article>
                        <h3>Your Inquiry Details:</h3>
                        <br>                
                        <table id="inquiryDetails">
                            <tr>
                                <td>Vehicle Type:</td>
                                <td><%= VehicleType %></td>
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
                                <td>Reason for Inquiry:</td>
                                <td><%= inquiryInfo %></td>
                            </tr>                            
                        </table>
                        <br><br> 
                        <button type="button" value="Back" 
                                onclick="window.location.href='demo.html'">
                            Back&nbsp;
                        </button>
                    </article>                        

                </div><!-- end rightDivContent -->    
            </div><!-- end rightDiv -->

            <footer>
                <br>
                &copy;&nbsp;2015 &nbsp;&nbsp;Stacy Bridges
            </footer>

    	</div><!-- end mainDiv -->
    </body>
</html>
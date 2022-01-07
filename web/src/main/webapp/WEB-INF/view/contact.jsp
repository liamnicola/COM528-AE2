<%-- 
    Document   : content
    Created on : Jan 4, 2020, 11:19:47 AM
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// request set in controller
//    request.setAttribute("selectedPage","contact");
%>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>Contact</H1>
</main>
<form>
    <p>First Name:<input type="text" name="fName" required ></p>   
    <p>Last Name: <input type="text" name="lName" required> </p>         
    <p>Email:<input type="text" name="email" required ></p>            
    <p>Message: <input type="text" name="message" required ></p>
</form>
         <button type="submit">Send</button>

<jsp:include page="footer.jsp" />

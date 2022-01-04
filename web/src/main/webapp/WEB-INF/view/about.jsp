<%-- 
    Document   : about
    Created on : Jan 4, 2022, 16:44:12 PM
    Author     : liamn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// request set in controller
//    request.setAttribute("selectedPage","about");
%>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>About</H1>
    
    <p>In this project, I have created an application for online shopping. The features included in this application are:</p>
    <ul>
        <li>A Catalogue for users to purchase items</li>
        <li>Shopping basket users can add and remove items from</li>
        <li>Make transactions for the items in shopping basket</li>
        <li>Admins can add, remove and modify items from the catalogue</li>
        <li>Card verification to accept valid payment methods</li>
    </ul>
    
    <h1>This project was created by Liam Nicola</h1>
    <a href="https://github.com/liamnicola">Link to GitHub</a>


</main>




<jsp:include page="footer.jsp" />

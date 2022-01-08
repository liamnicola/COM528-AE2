<%-- 
    Document   : addItem
    Created on : 6 Jan 2022, 23:27:28
    Author     : liamn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>Add Item</H1>
</main>
<form>
    <p>Item Name:<input type="text" name="fName" required ></p>   
    <p>Item Price: <input type="text" name="lName" required> </p>         
    <p>Item Quantity<input type="text" name="email" required ></p>            
</form>
         <button type="submit">Send</button>

<jsp:include page="footer.jsp" />

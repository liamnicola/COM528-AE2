<%-- 
    Document   : basket
    Created on : 3 Jan 2022, 21:24:26
    Author     : liamn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
// request set in controller
//request.setAttribute("selectedPage", "basket");
%>
<!DOCTYPE html>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>Basket</H1>
    
    <table class="table">
        
        <tr>
            <th>Item Name</th>
            <th>Price</th>
            <th>Quantity</th>
        </tr>
        
        <c:forEach var="item" items="${availableItems}">

            <tr>
                <td>${item.name}</td>
                <td>${item.price}</td>
                <td>${item.quantity}</td>
                <td>
                    <!-- post avoids url encoded parameters -->
                    <form action="./home" method="post">
                        <input type="hidden" name="itemName" value="${item.name}">
                        <input type="hidden" name="itemId" value="${item.id}"
                        <input type="hidden" name="action" value="removeItemFromBasket">
                        <button type="submit" >Remove</button>
                    </form> 
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td>Total</td>
            <td>£${shoppingbasketTotal}</td>
        </tr>
    </table>
<button type="button" onclick="window.location.href='checkout'">Checkout</button>
</main>

<jsp:include page="footer.jsp" />
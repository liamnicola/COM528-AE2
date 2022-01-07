<%-- 
    Document   : catalog
    Created on : 3 Jan 2022, 22:43:14
    Author     : liamn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.solent.com504.oodd.cart.model.dto.User"%>
<%@page import="org.solent.com504.oodd.cart.model.dto.UserRole"%>
<c:set var = "selectedPage" value = "catalog" scope="request"/>
<jsp:include page="header.jsp" />

<main role="main" class="container">
    
    <div>
        <h1>Catalogue</h1>
        <table class="table">
            <tr>
                <th scope ="Name">Name</th>
                <th scope ="Price">Price</th>
                <th scope ="Price">Quantity</th>
            </tr>
        
            <c:forEach var="item" items="${availableItems}">
                <tr>
                    <td>${item.name}</td>
                    <td>${item.price}</td>
                    <td>${item.quantity}
                        <form action="./viewModifyItem" method="GET">
                            <input type="hidden" name="itemUuid" value ="${item.name}">
                            <button class="btn" type="submit">Modify</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <form action="./addItem" method="GET">
            <button class="btn" type="submit" >Add Item</button>
        </form>
    </div>
</main>
<jsp:include page="footer.jsp" />
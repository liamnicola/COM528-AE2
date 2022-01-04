<%-- 
    Document   : catalogue
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
                <th scope ="Id"></th>
                <th scope ="Name"></th>
                <th scope ="Price"></th>
            </tr>
        
            <c:forEach var="item" items="${catalogList}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.price}</td>
                    <td>
                        <form action="./viewModifyItems" method="GET">
                            <input type="hidden" name="itemUuid" value ="${item.uuid}">
                            <button class="btn" type="submit">Modify</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</main>
<jsp:include page="footer.jsp" />
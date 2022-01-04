<%-- 
    Document   : viewModifyItems
    Created on : 3 Jan 2022, 23:55:13
    Author     : liamn
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.solent.com504.oodd.cart.model.dto.User"%>
<%@page import="org.solent.com504.oodd.cart.model.dto.UserRole"%>
<c:set var = "selectedPage" value = "users" scope="request"/>
<jsp:include page="header.jsp" />

<main role="main" class="container">
    <div>
        <h1>Modify Item</h1>
        
        <form action=".viewModifyItems" method="POST", enctype="multipart/form-data">
            <table class="table">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="${modifyItem.name}"/></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" value="${modifyItem.price}"/></td>  
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="text" name="quantity" value="${modifyItem.quantity}"/></td>  
                </tr>
            </table>
            
            <c:if test="${sessionUser.userRole =='ADMINISTRATOR' && modifyItem == null}">
                <button class="btn" type="submit" >Add Item</button>
            </c:if>
        </form>         
    </div>
</main>
<jsp:include page="footer.jsp"/>          
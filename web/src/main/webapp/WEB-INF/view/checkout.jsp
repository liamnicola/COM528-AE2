<%-- 
    Document   : checkout
    Created on : 3 Jan 2022, 22:16:08
    Author     : liamn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    
    <H1>Checkout</H1>
    
    <div class="col-xs-6 col-md-6">
        <form action="./checkout" method="POST"> 
            <p>Card Holder Name: <input type="text" name="cardname" required value="${user.firstName}"></p>   
            <p>Card Number: <input type="text" name="cardnumber" required value="${user.savedCard.cardnumber}"/>         
            <p>Card End Date<input type="text" name="cardenddate" required value="${user.savedCard.endDate}"></p>            
            <p>Card Issue Number: <input type="text" name="cardissuenumber" value="${user.savedCard.issueNumber}"></p>
            <p>CVV:<input type="text" name="cardcvv" required></p>
            <c:if test="${sessionUser.userRole !='ANONYMOUS'}">
                <div class="row">
                        <div class="col-xs-6 col-md-4">
                            <button class="btn btn-primary" type="submit">Purchase</button>

                        </div>
                </div>
            </c:if>
        </form>
        <c:if test="${sessionUser.userRole =='ANONYMOUS'}">
            <div class="row">
                <form action="./checkout" method="GET"> 
                    <div>
                        <p style="color: red;">Please sign in to pay</p>
                    </div>
                </form>
            </div>
        </c:if>
    </div>
            <br>
        <div>
            <table class="table">
                <th>Item Name</th>
                <th>Price</th>
                <th>Quantity</th>


            <c:forEach var="orderItem" items="${shoppingCartItems}">

                <tr>
                    <td>${orderItem.item.name}</td>
                    <td>${orderItem.item.price}</td>
                    <td>${orderItem.quantity}</td>
                </tr>
            </c:forEach>
                <td>TOTAL</td>
                <td>${shoppingcartTotal}</td>
        </table>
    </div>
</main>
<jsp:include page="footer.jsp" />
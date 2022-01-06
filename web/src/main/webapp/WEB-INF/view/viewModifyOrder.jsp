<%-- 
    Document   : viewModifyOrder
    Created on : 4 Jan 2022, 20:18:41
    Author     : liamn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var = "selectedPage" value = "users" scope="request"/>
<jsp:include page="header.jsp" />

<!-- Begin page content -->
<main role="main" class="container">

    <div>
        <H1>Modify Order ${modifyOrder.id} </H1>
        
        <form action="./viewModifyOrder" method="POST">
        <table class="table">
                <tr>
                    <td>Order ID: </td>
                    <td>${modifyOrder.id}</td>
                </tr>
                <tr>
                    <td>Date of Purchase: </td>
                    <td>${modifyOrder.dateOfPurchase}</td>
                </tr>
                <tr>
                    <td>Total Cost: </td>
                    <td>${modifyOrder.amountDue}</td>
                </tr>
                <tr>
                    <td>Quantity of Items: </td>
                    <td>${modifyOrder.purchasedItems.size()}</td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>${modifyOrder.purchaser.username}</td>
                </tr>
        </table>
             
        <h3>Ordered Items: </h3>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Item Name</th>
                    <th scope="col">Item Cost</th>
                    <th scope="col">Quantity</th>
                    <th></th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="orderItem" items="${modifyOrder.purchasedItems}">
                    <tr>
                        <td>${orderItem.item.name}</td>
                        <td>${orderItem.item.price}</td>                       
                        <td>${orderItem.quantity}</td>                    
                    </tr>
                </c:forEach>

            </tbody>
        </table>


        <c:if test="${sessionUser.userRole =='ADMINISTRATOR' && modifyOrder.id != null}">
            <input type="hidden" name="id" value="${modifyOrder.id}"/>            
            <input type="hidden" name="action" value="update"/>
            <button class="btn" type="submit" >Update Order</button>
        </c:if>
        </form>
                
        <c:if test="${sessionUser.userRole =='ADMINISTRATOR' && modifyOrder.id != null && modifyOrder.refunded == false}">
            <BR>
            <form action="./viewModifyOrder" method="POST">
                <input type="hidden" name="id" value="${modifyOrder.id}"/>            
                <input type="hidden" name="action" value="refund"/>
                <button class="btn" type="submit" >Refund Order</button>
            </form>
        </c:if>



        </div>

    </main>

<jsp:include page="footer.jsp" />

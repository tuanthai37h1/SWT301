<%-- 
    Document   : transaction
    Created on : 13 Mar 2024, 21:29:27
    Author     : TuyenCute
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
        <head>
            <meta charset="utf-8" />
            <meta
                name="viewport"
                content="width=device-width, initial-scale=1, shrink-to-fit=no"
                />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Book Store</title>
            <!-- Favicon-->
            <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
            <!-- Bootstrap icons-->
            <link
                href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
                rel="stylesheet"
                />
            <!-- Core theme CSS (includes Bootstrap)-->
            <link href="css/styles.css" rel="stylesheet" />
            <style>
        .total-price {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-top: 10px;
        }
    </style>

        <body>
            <%@include file="components/navBarComponent.jsp" %>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Acount ID</th>
                        <th>Total Price</th>
                        <th>Note</th>
                        <th>Create Date</th>                          
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list}" var="l">
                        <tr> 
                            <td>${l.accountId}</td>
                            <td>${l.totalPrice}</td>
                            <td>${l.note}</td>
                            <td>${l.createdDate}</td>                              
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
            <p class="total-price">Total Money: $<c:out value="${total}" /></p> 
            <p><a href="home" class="btn btn-primary">Back to home</a></p>
            <%@include file="components/footerComponent.jsp" %>
        </body>

    </html>

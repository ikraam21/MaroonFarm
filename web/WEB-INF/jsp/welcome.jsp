<%-- 
    Document   : welcome
    Created on : Oct 17, 2017, 11:50:32 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>${title}</title>
    </head>
    <body>
        <h1>${title}<h1>
        <b>Username : ${user.username}</b>
        <h3><a href="cartContents">Keranjang Belanja</a> : ${cart.size()} Produk</h3>
        <c:forEach items="${product}" var="c">
        <div>
            <div><a href="detail/${c.productId}">${c.productName}</a></div>
            <div>${c.productPrice}</div>
        </div>
        </c:forEach>
    </body>
</html>

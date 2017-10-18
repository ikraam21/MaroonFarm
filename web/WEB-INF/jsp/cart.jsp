<%-- 
    Document   : cart
    Created on : Oct 17, 2017, 11:50:32 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3><a href="cartContents">Keranjang Belanja</a> : ${cart.size()} Produk</h3>
        <h1>Isi Keranjang Anda :</h1>
        <c:forEach items="${cart}" var="c">
            <div>
                <div>${c.productName}</div>
                <div><a href="cartContents/hapus/${c.productId}">Hapus</a></div>
            </div>
        </c:forEach>
        <a href="welcome"><button type="submit">Kembali Berbelanja</button></a>
    </body>
</html>

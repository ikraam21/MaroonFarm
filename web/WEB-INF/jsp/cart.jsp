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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Keranjang Belanja</title>
    </head>
    <body>
        <div class="container">
            <h4>Username : ${user.username}</h4>
            <h4><a href="cartContents">Keranjang Belanja</a> : ${cart.size()} Produk</h4>

            <p/>
            <h3>Isi Keranjang Anda :</h3>

            <div>
                <table class="table table-bordere">
                    <tbody>
                        <c:forEach items="${cart}" var="c">
                            <tr>
                                <td>${c.productName}</td>
                                <td>Rp. ${c.productPrice}</td>
                                <td><a href="cartContents/delete/${c.productId}">Hapus</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <a href="welcome"><button type="submit">Kembali Berbelanja</button></a>
        </div>
    </body>
</html>

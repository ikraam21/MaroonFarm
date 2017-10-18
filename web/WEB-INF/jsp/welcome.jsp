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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Welcome</title>
    </head>
    <body>
        <div class="container">
            <h1>${title}<h1>
                    <h4>Username : ${user.username}</h4>
                    <h4><a href="cartContents">Keranjang Belanja</a> : ${cart.size()} Produk</h4>
                    <p/>
                    <h3>Silakan Pilih Produk yang Anda Inginkan :</h3>

                    <div>
                        <table class="table table-bordere">
                            <thead>
                                <tr>
                                    <th>Gambar Produk</th>
                                    <th>Nama Produk</th>
                                    <th>Harga Produk</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${product}" var="c">
                                    <tr>
                                        <td><img src="<c:url value="/web/buah-img/${c.productImage}" />" width="100" height="100" /></td>
                                        <td><a href="detail/${c.productId}">${c.productName}</a></td>
                                        <td>Rp. ${c.productPrice}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    </div>
                    </body>
                    </html>

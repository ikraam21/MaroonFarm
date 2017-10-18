<%-- 
    Document   : detail
    Created on : Oct 17, 2017, 11:50:32 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3><a href="cartContents">Keranjang Belanja</a> : ${cart.size()} Produk</h3>
        <h1>${productDetail.productName}</h1>
        <h1>${productDetail.productInformation}</h1>
        <h1>${productDetail.productPrice}</h1>
        <img src="${productDetail.productImage}.jpg" alt="gambar" width="500" height="500"/>
        <a href="tambahkan"><button type="submit">Tambahkan ke Keranjang</button></a>
        <a href="../welcome"><button type="submit">Kembali Berbelanja</button></a>
    </body>
</html>

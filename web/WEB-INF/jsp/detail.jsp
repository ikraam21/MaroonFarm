<%-- 
    Document   : detail
    Created on : Oct 17, 2017, 11:50:32 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Produk Detail</title>
    </head>
    <body>
        <div class="container">
            <h4>Username : ${user.username}</h4>
            <h4><a href="cartContents">Keranjang Belanja</a> : ${cart.size()} Produk</h4>
            
            <p/>
            <h3>Berikut Detail Produk yang Anda Pilih :</h3>
            
            <div>
                <table class="table table-bordere">
                    <thead>
                        <tr>
                            <th>Nama Produk</th>
                            <th>Informasi Produk</th>
                            <th>Harga Produk</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>${productDetail.productName}</td>
                            <td>${productDetail.productInformation}</td>
                            <td>${productDetail.productPrice}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <a href="tambahkan"><button type="submit">Tambahkan ke Keranjang</button></a>
            <a href="../welcome"><button type="submit">Kembali Berbelanja</button></a>
        </div>
    </body>
</html>

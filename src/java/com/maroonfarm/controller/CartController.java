/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.maroonfarm.controller;

import com.maroonfarm.model.Product;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/cartContents")
public class CartController {
    @RequestMapping
    public String cartContents(){
        return "cart";
    }
    @RequestMapping(value = "/hapus/{productId}")
    public String cartContents(HttpSession session, @PathVariable("productId") Integer productId){
        List<Product> list=(List<Product>) session.getAttribute("cart");
        List<Product> newCart=new ArrayList<>();
        int container=0;
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getProductId()==productId) {
                container=i;
            }
        }
        list.remove(container);
        return "moveToCart";
    }
}

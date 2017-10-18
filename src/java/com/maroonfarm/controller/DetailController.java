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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detail")
public class DetailController {

    @RequestMapping(value = "/{productId}")
    public String productDetail(Model model, HttpSession session, @PathVariable("productId") Integer productId) {
        Product product = null;
        List<Product> list = (List<Product>) session.getAttribute("product");
        for (Product pdc : list) {
            if (pdc.getProductId().compareTo(productId) == 0) {
                product = pdc;
            }
        }
        session.setAttribute("productDetail", product);
        return "detail";
    }

    @RequestMapping(value = "/tambahkan")
    public String productDetail(Model model, HttpSession session) {
        List<Product> list = (List<Product>) session.getAttribute("cart");
        list.add((Product) session.getAttribute("productDetail"));
        session.removeAttribute("productDetail");
        return "moveToWelcome";
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.maroonfarm.controller;

import com.maroonfarm.model.Product;
import com.maroonfarm.model.User;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/welcome")
public class WelcomeController {

    List<Product> cart=new ArrayList<>();
    @RequestMapping
    public String tampilkan(Model model, HttpSession session) {
        
        User user = new User("Ikraam", "rahasia");
        session.setAttribute("user", user);
        model.addAttribute("title", "Selamat Datang di Maroon Farm, Silakan Berbelanja.. ^_^");
        
        List<Product> list = new ArrayList<>();
        list.add(new Product(1, "Bibit Pohon Jambu Biji Kristal", "Jambu biji berdaging putih, renyah, manis, dan hampir tampa biji", 150000.0, "jambu-kristal.jpg"));
        list.add(new Product(2, "Bibit Pohon Jambu Biji Mutiara", "Jambu biji berdagin putih, renyah, manis, dan bijinya lunak", 130000.0, "jambu-mutiara.jpg"));
        list.add(new Product(3, "Bibit Pohon Jambu Air Madu", "Jambu air yang memiliki rasa sangat manis", 150000.0, "jambu-madu.jpg"));
        list.add(new Product(4, "Bibit Pohon Mangga Harum Manis", "Mangga yang memiliki rasa sangat manis", 100000.0, "mangga-harum-manis.jpg"));
        list.add(new Product(5, "Bibit Pohon Belimbing Madu", "Belimbing yang memiliki rasa sangat manis", 90000.0, "belimbing-madu.jpg"));
        list.add(new Product(6, "Bibit Pohon Tin", "Buah 'surga' dengan berbagai khasiat pengobatan", 200000.0, "tin.jpg"));
        list.add(new Product(7, "Bibit Pohon Zaitun", "Minyaknya memiliki banyak manfaat", 250000.0, "zaitun.jpg"));
        session.setAttribute("product", list);
        session.setAttribute("cart", cart);
        return "welcome";
    }


}

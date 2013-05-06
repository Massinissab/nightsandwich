/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nightsandwich.controller;

import com.nightsandwich.model.products.ProductCategorie;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author massinissa
 */
@Controller
@RequestMapping("/products")
public class ProductController {
    
    @RequestMapping("/{categorie}")
    public ModelAndView showCategories(@PathVariable String categorie){
        ModelAndView modelView = new ModelAndView("products/categorieView");
        ProductCategorie productCategorie = ProductCategorie.valueOf(categorie.toUpperCase());
        
        modelView.addObject(productCategorie);
        
        return modelView;
    }
    
    
    
    
    
}

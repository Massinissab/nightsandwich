/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nightsandwich.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author massinissa
 */

@Controller
public class HeaderController {
    
    @RequestMapping("/header/{categorie}")
    public ModelAndView showHeader(@PathVariable String categorie){
        ModelAndView mav = new ModelAndView("common/header");
        
        mav.addObject(categorie);
        
        return mav;
        
    }
}

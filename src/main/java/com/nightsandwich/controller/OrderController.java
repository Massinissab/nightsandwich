package com.nightsandwich.controller;

import com.nightsandwich.web.command.OrderCommand;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author mbouziad
 */
@Controller
@RequestMapping("/order")
public class OrderController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String showCart(){
        return "/order/cart";
        
    }
    
    @RequestMapping(value="/cart",method = RequestMethod.POST)
    public String updateCart(@ModelAttribute OrderCommand oder, HttpSession session){
        
        return showCart();
    }
    
    
    public String updateCustomer(){
        return showCart();
    }
    
    
}

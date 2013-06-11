/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nightsandwich.web.command;

import java.util.List;

/**
 *
 * @author mbouziad
 */
public class OrderCommand {
 
    private List<ProductItem> items;

    public List<ProductItem> getItems() {
        return items;
    }

    public void setItems(List<ProductItem> items) {
        this.items = items;
    }
    
    
    
}

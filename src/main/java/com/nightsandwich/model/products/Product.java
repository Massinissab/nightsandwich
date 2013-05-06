/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nightsandwich.model.products;

/**
 *
 * @author massinissa
 */
public enum Product {
    //--- Les SANDWICHS
    SANDWICHS_TRIPLE_STEAK("Triple Steak")
    ,SANDWICH_ESCALOPE_BOURSIN("Escalope boursin")
    ,SANDWICH_CHEESE_BURGER("Cheese burger")
    //--- Les PATES
    ,PATES_CARBONARA("Carbonara")
    ,PATES_CHICKEN("Chicken")
    ,PATES_BOLO("Bolo")
    //--- Les GOURMANDISES
    ,GOURMANDISES_SNICKERS("Snickers")
    ,GOURMANDISES_KITKAT("KitKat")
    ,GOURMANDISES_KINDER_BUENO("Kinder Bueno")
    //--- Les DESSERTS
    ,DESSERTS_TIRAMISU("Tiramisu")
    ,DESSERTS_TARTES_POMMES("Tartes aux pommes")
    ,DESSERTS_TARTES_DAIMS("Tiramisu")
    //--- Les Boissons
    ,BOISSONS_COCA_COLA("Cocal-Cola")
    ,BOISSONS_OASIS_TROPICAL("Oasis Tropical")
    ,BOISSONS_TROPICO("Tropico")
    ;
    
    private String name;
    private Float price;
    private String accroche;
    private String imgSrc;
    
    private Product(String name){
        this.name = name;
    }

    private Product(String name, Float price) {
        this.name = name;
        this.price = price;
    }
    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getAccroche() {
        return accroche;
    }

    public void setAccroche(String accroche) {
        this.accroche = accroche;
    }

    public String getImgSrc() {
        return imgSrc;
    }

    public void setImgSrc(String imgSrc) {
        this.imgSrc = imgSrc;
    }
    
    
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nightsandwich.model.products;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author massinissa
 */
public enum ProductCategorie {
    
    SANDWICHS("Sandwichs","Voici la sélection de sandwich que nous proposons pour votre plus grand plaisir."
            , Product.SANDWICH_ESCALOPE_BOURSIN, Product.SANDWICHS_TRIPLE_STEAK, Product.SANDWICH_CHEESE_BURGER)
    ,PATES("Pâtes","Une selection de pâtes faîte maison. Un vrai régal."
            , Product.PATES_BOLO, Product.PATES_CARBONARA, Product.PATES_CHICKEN)
    ,BOISSONS("Boissons","Les boissons pour un repas plus fluide !"
            , Product.BOISSONS_COCA_COLA, Product.BOISSONS_OASIS_TROPICAL, Product.BOISSONS_TROPICO)
    ,DESSERTS("Desserts","Et non pas si vite ! Des desserts pour les plus gourmands."
            , Product.DESSERTS_TARTES_DAIMS, Product.DESSERTS_TARTES_POMMES, Product.DESSERTS_TIRAMISU)
    ,GOURMANDISES("Gourmandises","Difficiles de résister ? Alors n'hésitez pas, choisissez parmis une variété de gourmandises"
            , Product.GOURMANDISES_KINDER_BUENO, Product.GOURMANDISES_KITKAT, Product.GOURMANDISES_SNICKERS)
    ;
    
    private String label;
    private String accroche;
    private List<Product> productList;
    
    /**
     * Category of product
     */
    private ProductCategorie(String label, String accroche, Product... productList){
        this.label = label;
        this.accroche = accroche;
        this.productList = Arrays.asList(productList);
    }

    public String getLabel() {
        return label;
    }

    
    public String getAccroche() {
        return accroche;
    }

    public List<Product> getProductList() {
        return productList;
    }
    
}

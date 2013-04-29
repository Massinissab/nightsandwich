/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nightsandwich.controller;

import com.nightsandwich.model.Position;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author massinissa
 */

@Controller
@RequestMapping("/position")
public class PositionController {
    
    private Position currentPosition;
    
    @RequestMapping("/live")
    public String observePosition(){
        return "observePosition";
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public void updatePosition(@RequestBody Position position){
        this.currentPosition = position;
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public Position getPosition(){
        return this.currentPosition;
    }
    
}

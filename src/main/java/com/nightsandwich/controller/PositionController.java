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
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author massinissa
 */

@Controller
@RequestMapping("/position")
public class PositionController {
    
    private Position currentPosition = new Position();
    
    @RequestMapping("/live")
    public String observePosition(){
        return "observePosition";
    }
    
    @RequestMapping(value="/update",method = RequestMethod.POST,consumes = "application/json")
    public @ResponseBody String updatePosition(@RequestBody Position position){
        this.currentPosition = position;
        return "updateOk";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public @ResponseBody Position getPosition(){
        return this.currentPosition;
    }
    
}

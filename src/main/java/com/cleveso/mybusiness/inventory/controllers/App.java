/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cleveso.mybusiness.inventory.controllers;

/**
 *
 * @author Selvadurai Handeeban <s.handeeban@gmail.com>
 */

import com.cleveso.mybusiness.inventory.utils.AuthUtil;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;   
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class App
{
    
    private final AuthUtil authUtil = AuthUtil.getInstance();
    
    
    
    @RequestMapping("/App/Grn")
    public ModelAndView getGrn(HttpServletRequest req,HttpServletResponse res){
        ModelAndView view = new ModelAndView("Appui/grn");
        return view;
    }
    
    
    @RequestMapping("/App/Products")
    public ModelAndView getProducts(){
    
        return  new ModelAndView("Appui/products");
    }
    
    
    
    @RequestMapping("/App/i")
    public ModelAndView getI(HttpServletRequest req,HttpServletResponse res){
    
        return new ModelAndView("Appui/newjsp");
    
    }
     
    @RequestMapping("/App/modal")
    public ModelAndView model(){
    
            ModelAndView view = new ModelAndView("Appui/modal");
            return view;
    }
    
    
    @RequestMapping(value="/App/Invoice")
    public ModelAndView Invoice(HttpServletRequest req,HttpServletResponse res){
        
        if(authUtil.getAuthenticationStatus(req, res) == AuthUtil.LOGGED_IN)
        return  new ModelAndView("Appui/invoice");
        else{
            try{
            res.sendRedirect("../login?req=App/Invoice");
            }catch(IOException ex){
                ex.printStackTrace();
            }
        }
        return null;
    }
    
    
    @RequestMapping("/")
    public ModelAndView getMode(HttpServletRequest req,HttpServletResponse res){
        return index(req,res );
    }
    
    
    
    @RequestMapping(value="/App",method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request,HttpServletResponse response){ 
    if(authUtil.getAuthenticationStatus(request, response) == AuthUtil.LOGGED_IN){
        return new ModelAndView("Appui/index");
       // return view;
    }
    else{
       return new ModelAndView("Appui/signin");
    }
    
        
    }
    
    
/*    
    @RequestMapping(value="/login",method=RequestMethod.GET)
    public void login(HttpServletRequest request,HttpServletResponse response){
        try{
        response.sendRedirect(request.getContextPath() + "/App");
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
    
    @RequestMapping(value="/signin",method = RequestMethod.GET)
    public ModelAndView signin(HttpServletRequest req,HttpServletResponse res){
        ModelAndView view = new ModelAndView("Appui/signin");
        return view;
    }

*/
}

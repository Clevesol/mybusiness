/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cleveso.mybusiness.inventory.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Selvadurai Handeeban <s.handeeban@gmail.com>
 */
public class AuthUtil
{
    
    
    public static final int LOGGED_IN = 1,LOGGED_OUT = 2,UNKNOWN = -1;
    
    
    private static AuthUtil util;
    
    public static AuthUtil getInstance(){
        return util == null ? new AuthUtil() : util;
    }
    
    public int getAuthenticationStatus(HttpServletRequest request,HttpServletResponse responsne){
        
        HttpSession session = request.getSession();
        
        if(session.getAttribute("uid") == null || session.getAttribute("uid").toString().length() <= 0){
            return UNKNOWN;
        }else if(session.getAttribute("uid").toString().equals("-1")){
            return LOGGED_OUT;
        }else{
            return LOGGED_IN;
        }
        
    }
    
}

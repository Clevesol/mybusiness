/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cleveso.mybusiness.inventory.utils.services;

/**
 *
 * @author Selvadurai Handeeban <s.handeeban@gmail.com>
 */
public class UserManager
{
    private static UserManager usrMngr;
    
    
    public static final int VALID_USER = 1,INVALID_USER = -1;
    
    public static UserManager getInstance(){
    
        return usrMngr == null ? new UserManager() : usrMngr;
    }
    
    public int validateUser(String username,String password){
        int r = ("admin@rhcloud.com".equals(username) && "admin111".equals(password)) ? VALID_USER : INVALID_USER;
        return r;
    }
}

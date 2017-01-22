/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cleveso.mybusiness.inventory.controllers;

import com.cleveso.mybusiness.inventory.utils.AuthUtil;
import com.cleveso.mybusiness.inventory.utils.services.UserManager;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Selvadurai Handeeban <s.handeeban@gmail.com>
 */
@Controller
public class AuthenticationController
{

    private static AuthenticationController controller;

    private final AuthUtil util = AuthUtil.getInstance();
    private final UserManager usrsMngr = UserManager.getInstance();

    public AuthenticationController getInstance()
    {
        return controller == null ? new AuthenticationController() : controller;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public void getLogout(HttpServletRequest req, HttpServletResponse res)
    {
        req.getSession().invalidate();

        try
        {
            res.sendRedirect("login");
        } catch (IOException ex)
        {
            ex.printStackTrace();
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void postlogin(HttpServletRequest req, HttpServletResponse res)
    {

        System.out.println("authentication post" + req.getSession().getAttribute("uid") + " ::" + req.getParameter("username"));

        if (util.getAuthenticationStatus(req, res) != AuthUtil.LOGGED_IN)
        {
            if (usrsMngr.validateUser(req.getParameter("username"), req.getParameter("password")) == UserManager.VALID_USER)
            {

                System.out.println("username validated and the session variables are being created");
                req.getSession().setAttribute("uid", req.getParameter("username"));
                System.out.println(req.getSession().getAttribute("uid") + " :: " + req.getParameter("req"));
            }

        }

        try
        {

            if (req.getSession().getAttribute("req") != null)
            {
                res.sendRedirect(req.getSession().getAttribute("req").toString());
            } else
            {
                res.sendRedirect("/App");
            }
        } catch (IOException ex)
        {
            ex.printStackTrace();
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView getlogin(HttpServletRequest req, HttpServletResponse res)
    {

        System.out.println("request GET");

        ModelAndView view = null;
        String requestedPath = req.getParameter("req");
        if (util.getAuthenticationStatus(req, res) != AuthUtil.LOGGED_IN)
        {
            view = new ModelAndView("Appui/signin");
            req.getSession().setAttribute("req", req.getParameter("req"));
        } else
        {
            try
            {
                String red = req.getParameter("req") == null || req.getParameter("req").isEmpty() ? "/App" : req.getParameter("req");
                res.sendRedirect(red);
            } catch (Exception ex)
            {
                ex.printStackTrace();
            }
        }

        return view;
    }

}

package com.demo.app.controller;

import com.demo.app.model.HamburgerDeterminer;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Initializer implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext sc = servletContextEvent.getServletContext();

        HamburgerDeterminer hamburgerDeterminer = new HamburgerDeterminer();

        sc.setAttribute("determiner", hamburgerDeterminer);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}

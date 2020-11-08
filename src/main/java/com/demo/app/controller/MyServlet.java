package com.demo.app.controller;

import com.demo.app.model.HamburgerDeterminer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MyServlet extends javax.servlet.http.HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String color = req.getParameter("color");
        HamburgerDeterminer hamburgerDeterminer = (HamburgerDeterminer) getServletContext().getAttribute("determiner");
        req.setAttribute("Toppings", hamburgerDeterminer.getToppingsList(color));
        req.getRequestDispatcher("/Toppings").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}

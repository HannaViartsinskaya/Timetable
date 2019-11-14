package com.mvc.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LanguageServlet")
public class LanguageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String selectedLanguage="en";
        HttpSession session=request.getSession();
        if(request.getParameter("pl")!=null){
            selectedLanguage="pl";
    } else if(request.getParameter("en")!=null){
            selectedLanguage="en";
        }
        session.setAttribute("selectedLanguage",selectedLanguage);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

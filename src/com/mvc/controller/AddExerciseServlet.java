package com.mvc.controller;

import com.mvc.bean.TimetableBean;
import com.mvc.dao.TimetableDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddExerciseServlet")
public class AddExerciseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String timeBegin=request.getParameter("timeBegin");
        String timeEnd=request.getParameter("timeEnd");
        String dayName=request.getParameter("dayName");
        String groupName = request.getParameter("groupListForAdd");
        String subject=request.getParameter("subject");
        String teacher=request.getParameter("teacher");
        String lokal=request.getParameter("lokal");
        TimetableBean timetableBean=new TimetableBean(timeBegin,timeEnd,dayName,groupName,subject,teacher,lokal);
        TimetableDAO timetableDAO=new TimetableDAO();
        String resultOfInsertionToDB= timetableDAO.addCourseToDB(timetableBean);

        if(resultOfInsertionToDB.equals("SUCCESS"))
        {
            request.setAttribute("message","The course was added");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("gr", groupName);
            request.setAttribute("errMessage", resultOfInsertionToDB);
            request.getRequestDispatcher("/addItem.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

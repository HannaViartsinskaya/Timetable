package com.mvc.controller;

import com.mvc.bean.TimetableBean;
import com.mvc.dao.TimetableDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditServlet")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCourse=request.getParameter("idCourse");
        String timeBegin=request.getParameter("timeBegin");
        String timeEnd=request.getParameter("timeEnd");
        String dayName=request.getParameter("dayName");
        String groupName = request.getParameter("groupName");
        String subject=request.getParameter("subject");
        String teacher=request.getParameter("teacher");
        String lokal=request.getParameter("lokal");
        TimetableBean timetableBean=new TimetableBean(idCourse, timeBegin,timeEnd,dayName,groupName,subject,teacher,lokal);
        TimetableDAO timetableDAO=new TimetableDAO();
        if(request.getParameter("editB")!=null){
            String resultOfEditionDB= timetableDAO.editCourseToDB(timetableBean);

            if(resultOfEditionDB.equals("SUCCESS"))
            {
                request.setAttribute("Message", "Your data was succesfully changed");
                request.getRequestDispatcher("/editCourse.jsp").forward(request, response);
            }
            else
            {
                request.setAttribute("errMessage", resultOfEditionDB);
                request.getRequestDispatcher("/editCourse.jsp").forward(request, response);
            }
        }else if(request.getParameter("deleteB")!=null){
            String resultOfDeliting=timetableDAO.deleteFromTable(timetableBean);
            if(resultOfDeliting.equals("SUCCESS"))
            {
                request.setAttribute("Message", "Your data was succesfully deleted");
                request.getRequestDispatcher("/editCourse.jsp").forward(request, response);
            }
            else
            {
                request.setAttribute("errMessage", resultOfDeliting);
                request.getRequestDispatcher("/editCourse.jsp").forward(request, response);
            }

        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

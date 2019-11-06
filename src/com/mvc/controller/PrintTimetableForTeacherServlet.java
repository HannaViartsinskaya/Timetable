package com.mvc.controller;

import com.mvc.bean.TimetableBean;
import com.mvc.dao.TimetableDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PrintTimetableForTeacherServlet")
public class PrintTimetableForTeacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String teacherFromUser=request.getParameter("teacher");
        TimetableBean timetableBean=new TimetableBean();
        TimetableDAO timetableDAO=new TimetableDAO();
        timetableBean.setTeacher(teacherFromUser);
        List <TimetableBean> timetableForTeacher=new ArrayList<>();
        List <TimetableBean> timetableForTeacherMonday=new ArrayList<>();
        List <TimetableBean> timetableForTeacherTuesday=new ArrayList<>();
        List <TimetableBean> timetableForTeacherWednesday=new ArrayList<>();
        List <TimetableBean> timetableForTeacherThursday=new ArrayList<>();
        List <TimetableBean> timetableForTeacherFriday=new ArrayList<>();
        List <TimetableBean> timetableForTeacherSaturday=new ArrayList<>();
        List <TimetableBean> timetableForTeacherSunday=new ArrayList<>();
        timetableForTeacher=timetableDAO.allLecturesForTeacher(timetableBean);

        HttpSession session=request.getSession();
        session.setAttribute("tMondayTeacher",timetableForTeacherMonday);
        session.setAttribute("tTuesdayTeacher",timetableForTeacherTuesday);
        session.setAttribute("tWednesdayTeacher",timetableForTeacherWednesday);
        session.setAttribute("tThursdayTeacher",timetableForTeacherThursday);
        session.setAttribute("tFridayTeacher",timetableForTeacherFriday);
        session.setAttribute("tSaturdayTeacher",timetableForTeacherSaturday);
        session.setAttribute("tSundayTeacher",timetableForTeacherSunday);
        session.setAttribute("teacherN",teacherFromUser);
        for(int i=0;i<timetableForTeacher.size();i++){
            if(timetableForTeacher.get(i).getDay().equals("Monday")){
                timetableForTeacherMonday.add(timetableForTeacher.get(i));
            }
            else if(timetableForTeacher.get(i).getDay().equals("Tuesday")){
                timetableForTeacherTuesday.add(timetableForTeacher.get(i));
            }
            else if(timetableForTeacher.get(i).getDay().equals("Wednesday")){
                timetableForTeacherWednesday.add(timetableForTeacher.get(i));
            }
            else if(timetableForTeacher.get(i).getDay().equals("Thursday")){
                timetableForTeacherThursday.add(timetableForTeacher.get(i));
            }
            else if(timetableForTeacher.get(i).getDay().equals("Friday")){
                timetableForTeacherFriday.add(timetableForTeacher.get(i));
            }
            else if(timetableForTeacher.get(i).getDay().equals("Saturday")){
                timetableForTeacherSaturday.add(timetableForTeacher.get(i));
            }
            else if(timetableForTeacher.get(i).getDay().equals("Sunday")){
                timetableForTeacherSunday.add(timetableForTeacher.get(i));
            }
        }
        if(!timetableForTeacher.isEmpty()) {
            request.setAttribute("teacherN",teacherFromUser);
            request.setAttribute("tMondayTeacher",timetableForTeacherMonday);
            request.setAttribute("tTuesdayTeacher", timetableForTeacherTuesday);
            request.setAttribute("tWednesdayTeacher",timetableForTeacherWednesday);
            request.setAttribute("tThursdayTeacher",timetableForTeacherThursday);
            request.setAttribute("tFridayTeacher",timetableForTeacherFriday);
            request.setAttribute("tSaturdayTeacher",timetableForTeacherSaturday);
            request.setAttribute("tSundayTeacher",timetableForTeacherSunday);
            request.getRequestDispatcher("/timetableForTeacher.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

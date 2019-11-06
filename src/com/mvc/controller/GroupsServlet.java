package com.mvc.controller;

import com.mvc.bean.TimetableBean;
import com.mvc.comparator.TimetableComparator;
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

@WebServlet(name = "GroupsServlet")
public class GroupsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TimetableComparator timetableComparator=new TimetableComparator();
        String timeBegin=request.getParameter("timeBegin");
        String groupNameFromUser = request.getParameter("groupList");
        TimetableBean timetableBean = new TimetableBean();
        timetableBean.setGroupName(groupNameFromUser);
        TimetableDAO timetableDAO = new TimetableDAO();
        List<TimetableBean> allTimetable = new ArrayList<>();
        allTimetable = timetableDAO.allLecturesForGroup(timetableBean);
        allTimetable.sort(timetableComparator);
        HttpSession session=request.getSession();

        List<TimetableBean> timetableMonday = new ArrayList<>();
        List<TimetableBean> timetableTuesday = new ArrayList<>();
        List<TimetableBean> timetableWednesday = new ArrayList<>();
        List<TimetableBean> timetableThursday = new ArrayList<>();
        List<TimetableBean> timetableFriday= new ArrayList<>();
        List<TimetableBean> timetableSaturday = new ArrayList<>();
        List<TimetableBean> timetableSunday = new ArrayList<>();
        session.setAttribute("tMonday",timetableMonday);
        session.setAttribute("tTuesday",timetableTuesday);
        session.setAttribute("tWednesday",timetableWednesday);
        session.setAttribute("tThursday",timetableThursday);
        session.setAttribute("tFriday",timetableFriday);
        session.setAttribute("tSaturday",timetableSaturday);
        session.setAttribute("tSunday",timetableSunday);
        session.setAttribute("groupN",groupNameFromUser);
        for(int i=0;i<allTimetable.size();i++){
            if(allTimetable.get(i).getDay().equals("Monday")){
                timetableMonday.add(allTimetable.get(i));
            }
            else if(allTimetable.get(i).getDay().equals("Tuesday")){
                timetableTuesday.add(allTimetable.get(i));
            }
            else if(allTimetable.get(i).getDay().equals("Wednesday")){
                timetableWednesday.add(allTimetable.get(i));
            }
            else if(allTimetable.get(i).getDay().equals("Thursday")){
                timetableThursday.add(allTimetable.get(i));
            }
            else if(allTimetable.get(i).getDay().equals("Friday")){
                timetableFriday.add(allTimetable.get(i));
            }
            else if(allTimetable.get(i).getDay().equals("Saturday")){
                timetableSaturday.add(allTimetable.get(i));
            }
            else if(allTimetable.get(i).getDay().equals("Sunday")){
                timetableSunday.add(allTimetable.get(i));
            }
        }


        if(!allTimetable.isEmpty()) {
            request.setAttribute("groupN",groupNameFromUser);
            request.setAttribute("tMonday",timetableMonday);
            request.setAttribute("tTuesday", timetableTuesday);
            request.setAttribute("tWednesday",timetableWednesday);
            request.setAttribute("tThursday",timetableThursday);
            request.setAttribute("tFriday",timetableFriday);
            request.setAttribute("tSaturday",timetableSaturday);
            request.setAttribute("tSunday",timetableSunday);
            request.getRequestDispatcher("/showAllSecondVersion.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

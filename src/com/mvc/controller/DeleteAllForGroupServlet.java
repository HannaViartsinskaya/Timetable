package com.mvc.controller;

import com.mvc.comparator.TimetableComparator;
import com.mvc.dao.TimetableDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteAllForGroupServlet")
public class DeleteAllForGroupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String groupName =(String)session.getAttribute("groupN");
        TimetableDAO timetableDAO=new TimetableDAO();
        String resultOfEditionDB=timetableDAO.deleteAllCoursesForGroup(groupName);
        if(resultOfEditionDB.equals("SUCCESS"))
        {
            request.setAttribute("Message", "Your data was succesfully deleted");
            request.getRequestDispatcher("/editCourse.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("errMessage", resultOfEditionDB);
            request.getRequestDispatcher("/editCourse.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

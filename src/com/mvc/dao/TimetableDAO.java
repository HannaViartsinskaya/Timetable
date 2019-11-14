package com.mvc.dao;

import com.mvc.bean.TimetableBean;
import com.mvc.utill.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TimetableDAO {
    public List<TimetableBean> allLecturesForGroup(TimetableBean timetableBean){
    String groupName=timetableBean.getGroupName();
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String groupNameDB = "";
        List result= new ArrayList();
        List<TimetableBean> times=new ArrayList();
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select id,timeBegin, timeEnd, dayName, groupName, subject,teacher,lokal from lectures");
            while (resultSet.next())
            {
                groupNameDB = resultSet.getString("groupName");

                if (groupName.equals(groupNameDB) ) {
                    result.add("Classes:"+resultSet.getString("timeBegin")+" - "+resultSet.getString("timeEnd")+
                            " "+resultSet.getString("dayName")+"<br> subject "+resultSet.getString("subject")+
                            " "+resultSet.getString("teacher")+"<br> room:"+resultSet.getString("lokal"));
                    String idCourse=resultSet.getString("id");
                    String timeBegin=resultSet.getString("timeBegin");
                    String timeEnd=resultSet.getString("timeEnd");
                    String dayName=resultSet.getString("dayName");
                    String subject=resultSet.getString("subject");
                    String teacher=resultSet.getString("teacher");
                    String lokal=resultSet.getString("lokal");
                    TimetableBean time=new TimetableBean(idCourse, timeBegin,timeEnd,dayName,groupNameDB,subject,teacher,lokal);
                    times.add(time);

                }
            }}
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        result.add("No");
        return times;
    }

    public String addCourseToDB(TimetableBean timetableBean){
        String timeBegin=timetableBean.getTimeBeggin();
        String timeEnd=timetableBean.getTimeEnd();
        String dayName=timetableBean.getDay();
        String groupName=timetableBean.getGroupName();
        String subject=timetableBean.getSubject();
        String teacher=timetableBean.getTeacher();
        String lokal=timetableBean.getLokal();
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "insert into lectures(timeBegin, timeEnd, dayName, groupName, subject,teacher,lokal) values (?,?,?,?,?,?,?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, timeBegin);
            preparedStatement.setString(2, timeEnd);
            preparedStatement.setString(3, dayName);
            preparedStatement.setString(4, groupName);
            preparedStatement.setString(5, subject);
            preparedStatement.setString(6, teacher);
            preparedStatement.setString(7, lokal);
            int i = preparedStatement.executeUpdate();
            if (i != 0)
                return "SUCCESS";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "Oops.. Something went wrong there..!";
    }

    public String editCourseToDB(TimetableBean timetableBean){
        String idCourseStr=timetableBean.getId_course();
        int idCourse=Integer.parseInt(idCourseStr);
        String timeBegin=timetableBean.getTimeBeggin();
        String timeEnd=timetableBean.getTimeEnd();
        String dayName=timetableBean.getDay();
        String groupName=timetableBean.getGroupName();
        String subject=timetableBean.getSubject();
        String teacher=timetableBean.getTeacher();
        String lokal=timetableBean.getLokal();
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "update lectures set timeBegin=?, timeEnd=?, dayName=?,  subject=?,teacher=?,lokal=? where id=?";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, timeBegin);
            preparedStatement.setString(2, timeEnd);
            preparedStatement.setString(3, dayName);
            preparedStatement.setString(4, subject);
            preparedStatement.setString(5, teacher);
            preparedStatement.setString(6, lokal);
            preparedStatement.setInt(7, idCourse);
            int i = preparedStatement.executeUpdate();

            if (i != 0)
                return "SUCCESS";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "Oops.. Something went wrong there..!";
    }
    public String deleteFromTable(TimetableBean timetableBean){
        String idCourseStr=timetableBean.getId_course();
        int idCourse=Integer.parseInt(idCourseStr);

        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "delete from lectures where id=?";
            preparedStatement = con.prepareStatement(query);

            preparedStatement.setInt(1, idCourse);
            int i = preparedStatement.executeUpdate();

            if (i != 0)
                return "SUCCESS";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "Oops.. Something went wrong there with deleting!";
    }


    public List<TimetableBean> allLecturesForTeacher(TimetableBean timetableBean){
        String teacher=timetableBean.getTeacher();
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String teacherDB = "";
        List<TimetableBean> times=new ArrayList();
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select *  from lectures ");

            while (resultSet.next())
            {
                teacherDB = resultSet.getString("teacher");

                if (teacher.equals(teacherDB) ) {
                    String idCourse=resultSet.getString("id");
                    String timeBegin=resultSet.getString("timeBegin");
                    String timeEnd=resultSet.getString("timeEnd");
                    String dayName=resultSet.getString("dayName");
                    String groupName=resultSet.getString("groupName");
                    String subject=resultSet.getString("subject");
                    String lokal=resultSet.getString("lokal");
                    TimetableBean time=new TimetableBean(idCourse, timeBegin,timeEnd,dayName,groupName,subject,teacherDB,lokal);
                    times.add(time);
                }
            }}
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return times;
    }

    public String deleteAllCoursesForGroup(String groupName){
        String group=groupName;
        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DBConnection.createConnection();
            String query = "delete from lectures where groupName=?";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, group);
            int i = preparedStatement.executeUpdate();
            if (i != 0)
                return "SUCCESS";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "Oops.. Something went wrong there with deleting!";
    }

    }


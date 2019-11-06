<%@ page import="com.mvc.bean.TimetableBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: verti
  Date: 04.11.2019
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Timetable</title>
    <style>
        <%@include file='/resources/style.css' %>
    </style>

</head>
<body>
<div class="breadcrumbs">
    <a href="index.jsp">Main</a>
    <a class="active" href="timetableForTeacher.jsp">Teacher's timetable</a>

</div>
<h1>Wszystkie zajecia dla grupy ${teacherN}
</h1>

<table id="timetable2">
    <tr>
        <%
            List<TimetableBean> answerM =(ArrayList<TimetableBean>) request.getAttribute("tMondayTeacher");
            for(int i = 0; i< answerM.size(); i++){

        %>
        <td><%=answerM.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>


    </tr>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerT =(ArrayList<TimetableBean>) request.getAttribute("tTuesdayTeacher");
        for(int i = 0; i< answerT.size(); i++){

    %>
    <tr><td><%=answerT.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerW =(ArrayList<TimetableBean>) request.getAttribute("tWednesdayTeacher");
        for(int i = 0; i< answerW.size(); i++){

    %>
    <tr><td><%=answerW.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerTh =(ArrayList<TimetableBean>) request.getAttribute("tThursdayTeacher");
        for(int i = 0; i< answerTh.size(); i++){

    %>
    <tr><td><%=answerTh.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerFr =(ArrayList<TimetableBean>) request.getAttribute("tFridayTeacher");
        for(int i = 0; i< answerFr.size(); i++){

    %>
    <tr><td><%=answerFr.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerSa =(ArrayList<TimetableBean>) request.getAttribute("tSaturdayTeacher");
        for(int i = 0; i< answerSa.size(); i++){

    %>
    <tr><td><%=answerSa.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerSu =(ArrayList<TimetableBean>) request.getAttribute("tSundayTeacher");
        for(int i = 0; i< answerSu.size(); i++){

    %>
    <tr><td><%=answerSu.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<div id="center">
    <a href="/editCoursesForTeacher.jsp"  >
        <button id="btnAdd">Edit</button>
    </a>
</div>
</body>
</html>

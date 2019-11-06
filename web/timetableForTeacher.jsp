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

        <%
            List<TimetableBean> answerM =(ArrayList<TimetableBean>) session.getAttribute("tMondayTeacher");

            if(!answerM.isEmpty()){
    %>
    <tr id="nonBorder"><td><%="Monday"%></td></tr>
    <%}%>
    <%
            for(int i = 0; i< answerM.size(); i++){

        %>
        <td><%=answerM.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerT =(ArrayList<TimetableBean>) session.getAttribute("tTuesdayTeacher");
        if(!answerT.isEmpty()){
    %>
    <tr id="nonBorder"><td><%="Tuesday"%></td></tr>
    <%}%>
     <%
        for(int i = 0; i< answerT.size(); i++){

    %>
    <tr><td><%=answerT.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerW =(ArrayList<TimetableBean>) session.getAttribute("tWednesdayTeacher");
        if(!answerW.isEmpty()){
    %>
    <tr id="nonBorder"><td><%="Wednesday"%></td></tr>
    <%}%>
    <%
    for(int i = 0; i< answerW.size(); i++){

    %>
    <tr><td><%=answerW.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerTh =(ArrayList<TimetableBean>) session.getAttribute("tThursdayTeacher");
        if(!answerTh.isEmpty()){
    %>
    <tr id="nonBorder"><td><%="Thursday"%></td></tr>
    <%}%>
    <%
    for(int i = 0; i< answerTh.size(); i++){

    %>
    <tr><td><%=answerTh.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerFr =(ArrayList<TimetableBean>) session.getAttribute("tFridayTeacher");
        if(!answerFr.isEmpty()){
    %>
    <tr id="nonBorder"><td><%="Friday"%></td></tr>
    <%}%>
    <%
    for(int i = 0; i< answerFr.size(); i++){

    %>
    <tr><td><%=answerFr.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerSa =(ArrayList<TimetableBean>) session.getAttribute("tSaturdayTeacher");
        if(!answerSa.isEmpty()){
    %>
    <tr id="nonBorder"><td><%="Saturday"%></td></tr>
    <%}%>
    <%
    for(int i = 0; i< answerSa.size(); i++){

    %>
    <tr><td><%=answerSa.get(i).toStringWithGroup()+"<br>"%></td></tr>
    <%}%>
</table>
<table id="timetable2">
    <%
        List<TimetableBean> answerSu =(ArrayList<TimetableBean>) session.getAttribute("tSundayTeacher");
        if(!answerSu.isEmpty()){
    %>
    <tr id="nonBorder"><td><%="Sunday"%></td></tr>
    <%}%>
    <%
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

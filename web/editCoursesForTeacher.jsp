<%@ page import="com.mvc.bean.TimetableBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mvc.constants.Eng"%>
<%@ page import="com.mvc.constants.Pln"%><%--
  Created by IntelliJ IDEA.
  User: verti
  Date: 01.11.2019
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        <%@include file='/resources/style.css' %>
    </style>
</head>
<body>
<%String language=(String)session.getAttribute("selectedLanguage");
    String messageEditCourse="Click twice on line, whose data you want to change";
    String timeB = "Time begin (format HH:MM)";
    String timeE = "Time end (format HH:MM)";
    String day = "Day";
    String group = "Group";
    String subject = "Subject ";
    String teacher = "Teacher ";
    String lokal = "Room";
    String namePageEditTeacher = "All courses for teacher ";
    if(language!=null){
        if(language.equals("en")){
            messageEditCourse=Eng.messageEditCourse;
            timeB=Eng.timeB;
            timeE=Eng.timeE;
            day=Eng.day;
            group=Eng.group;
            subject=Eng.subject;
            teacher=Eng.teacher;
            lokal=Eng.lokal;
            namePageEditTeacher=Eng.namePageEditTeacher;
        }else {
            messageEditCourse=Pln.messageEditCourse;
            timeB=Pln.timeB;
            timeE=Pln.timeE;
            day=Pln.day;
            group=Pln.group;
            subject=Pln.subject;
            teacher=Pln.teacher;
            lokal=Pln.lokal;
            namePageEditTeacher=Pln.namePageEditTeacher;
        }
    }
%>

<div class="breadcrumbs">
    <a href="index.jsp">Main</a>
    <a href="timetableForTeacher.jsp">Timetable</a>
    <a class="active" href="editCoursesForTeacher.jsp">Edit course</a>
</div>
<h1 ><%=namePageEditTeacher%>  ${teacherN}</h1>

<table id="timetable1">
    <%
        List<TimetableBean> answerM =(ArrayList<TimetableBean>)session.getAttribute("tMondayTeacher");
        for(int i = 0; i< answerM.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerM.get(i).getId_course()%></td>
        <td><%=answerM.get(i).getDay()%></td>
        <td><%=answerM.get(i).getTimeBeggin()%></td>
        <td><%=answerM.get(i).getTimeEnd()%></td>
        <td><%=answerM.get(i).getGroupName()%></td>
        <td><%=answerM.get(i).getSubject()%></td>
        <td><%=answerM.get(i).getLokal()%></td>

    </tr>
    <%}%>

    <%
        List<TimetableBean> answerT =(ArrayList<TimetableBean>)session.getAttribute("tTuesdayTeacher");
        for(int i = 0; i< answerT.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerT.get(i).getId_course()%></td>
        <td><%=answerT.get(i).getDay()%></td>
        <td><%=answerT.get(i).getTimeBeggin()%></td>
        <td><%=answerT.get(i).getTimeEnd()%></td>
        <td><%=answerT.get(i).getGroupName()%></td>
        <td><%=answerT.get(i).getSubject()%></td>
        <td><%=answerT.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerW =(ArrayList<TimetableBean>)session.getAttribute("tWednesdayTeacher");
        for(int i = 0; i< answerW.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerW.get(i).getId_course()%></td>
        <td><%=answerW.get(i).getDay()%></td>
        <td><%=answerW.get(i).getTimeBeggin()%></td>
        <td><%=answerW.get(i).getTimeEnd()%></td>
        <td><%=answerW.get(i).getGroupName()%></td>
        <td><%=answerW.get(i).getSubject()%></td>
        <td><%=answerW.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerTh =(ArrayList<TimetableBean>)session.getAttribute("tThursdayTeacher");
        for(int i = 0; i< answerTh.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerTh.get(i).getId_course()%></td>
        <td><%=answerTh.get(i).getDay()%></td>
        <td><%=answerTh.get(i).getTimeBeggin()%></td>
        <td><%=answerTh.get(i).getTimeEnd()%></td>
        <td><%=answerTh.get(i).getGroupName()%></td>
        <td><%=answerTh.get(i).getSubject()%></td>
        <td><%=answerTh.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerFr =(ArrayList<TimetableBean>)session.getAttribute("tFridayTeacher");
        for(int i = 0; i< answerFr.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable();">
        <td style="display:none;"><%=answerFr.get(i).getId_course()%></td>
        <td><%=answerFr.get(i).getDay()%></td>
        <td><%=answerFr.get(i).getTimeBeggin()%></td>
        <td><%=answerFr.get(i).getTimeEnd()%></td>
        <td><%=answerFr.get(i).getGroupName()%></td>
        <td><%=answerFr.get(i).getSubject()%></td>
        <td><%=answerFr.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerSa =(ArrayList<TimetableBean>)session.getAttribute("tSaturdayTeacher");
        for(int i = 0; i< answerSa.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerSa.get(i).getId_course()%></td>
        <td><%=answerSa.get(i).getDay()%></td>
        <td><%=answerSa.get(i).getTimeBeggin()%></td>
        <td><%=answerSa.get(i).getTimeEnd()%></td>
        <td><%=answerSa.get(i).getGroupName()%></td>
        <td><%=answerSa.get(i).getSubject()%></td>
        <td><%=answerSa.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerSu =(ArrayList<TimetableBean>)session.getAttribute("tSundayTeacher");
        for(int i = 0; i< answerSu.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable();">
        <td style="display:none;"><%=answerSu.get(i).getId_course()%></td>
        <td><%=answerSu.get(i).getDay()%></td>
        <td><%=answerSu.get(i).getTimeBeggin()%></td>
        <td><%=answerSu.get(i).getTimeEnd()%></td>
        <td><%=answerSu.get(i).getGroupName()%></td>
        <td><%=answerSu.get(i).getSubject()%></td>
        <td><%=answerSu.get(i).getLokal()%></td>

    </tr>
    <%}%>
</table>

<script>
    // function myFunction(x) {
    //     alert("Row index is: " + x.rowIndex);
    // }
    function showTable(){
        document.getElementById("hiddTable").style.display = "block";
    }
    function myFunction(x){
        var table = document.getElementById("timetable1"),dIndex;
        for(var i = 0; i < table.rows.length; i++)
        {
            table.rows[i].onclick = function()
            {
                rIndex = x.rowIndex;
                console.log(rIndex);
                document.getElementById("idCourse").value = this.cells[0].innerHTML;
                document.getElementById("timeBegin").value = this.cells[2].innerHTML;
                document.getElementById("timeEnd").value = this.cells[3].innerHTML;
                document.getElementById("dayName").value = this.cells[1].innerHTML;
                document.getElementById("groupName").value = this.cells[4].innerHTML;
                document.getElementById("subject").value = this.cells[5].innerHTML;
                document.getElementById("teacher").value = "${teacherN}";
                document.getElementById("lokal").value = this.cells[6].innerHTML;


            };
        }
    }


    // edit the row
    function editRow()
    {
        table.rows[rIndex].cells[0].innerHTML = document.getElementById("idCourse").value;
        table.rows[rIndex].cells[1].innerHTML = document.getElementById("dayName").value;
        table.rows[rIndex].cells[2].innerHTML = document.getElementById("timeBegin").value;
        table.rows[rIndex].cells[3].innerHTML = document.getElementById("timeEnd").value;
        table.rows[rIndex].cells[4].innerHTML = document.getElementById("subject").value;
        table.rows[rIndex].cells[5].innerHTML = document.getElementById("teacher").value;
        table.rows[rIndex].cells[6].innerHTML = document.getElementById("lokal").value;


    }
</script>
<h3 ><%=messageEditCourse%></h3>
<form name="form" action="EditCourseForTeacherServlet" method="post" onsubmit="return validate()" >
    <table align="center" id="hiddTable" style="display: none">

        <tr style="display:none;">
            <td>ID</td>
            <td><input type="text" name="idCourse" id="idCourse"  readonly="readonly"/></td>
        </tr>
        <tr>
            <td ><%=timeB%></td>
            <td><input type="text" name="timeBegin" id="timeBegin"  pattern="([01]?[0-9]{1}|2[0-3]{1}):[0-5]{1}[0-9]{1}"/></td>
        </tr>
        <tr>
            <td ><%=timeE%></td>
            <td><input type="text" name="timeEnd" id="timeEnd"  pattern="([01]?[0-9]{1}|2[0-3]{1}):[0-5]{1}[0-9]{1}"/></td>
        </tr>
        <tr>
            <td ><%=day%></td>
            <td>
                <select  name="dayName" id="dayName">
                    <option>Saturday</option>
                    <option>Sunday</option>
                    <option>Monday</option>
                    <option>Tuesday</option>
                    <option>Wednesday</option>
                    <option>Thursday</option>
                    <option>Friday</option>
                </select>
            </td>
        </tr>
        <tr>
            <td ><%=group%></td>
            <td>
                <select  name="groupName" id="groupName">
                    <option>infromatyka(1semestr)</option>
                    <option>Informatyka(2semestr)</option>
                    <option>Informatyka(3semestr)</option>
                    <option>Informatyka(4semestr)</option>
                    <option>Rachunkowosc(1semestr)</option>
                    <option>Rachunkowosc(2semestr)</option>
                    <option>Rachunkowosc(3semestr)</option>
                    <option>Rachunkowosc(4semestr)</option>
                    <option>Kosmetyka(1semestr)</option>
                    <option>Kosmetyka(2semestr)</option>
                    <option>Kosmetyka(3semestr)</option>
                    <option>Kosmetyka(4semestr)</option>
                </select>
            </td>
        </tr>

        <tr>
            <td ><%=subject%></td>
            <td><input type="text" name="subject" id="subject"/></td>
        </tr>
        <tr>
            <td><%=teacher%></td>
            <td><input type="text" name="teacher" id="teacher" readonly="readonly" /></td>
        </tr>
        <tr>
            <td ><%=lokal%></td>
            <td><input type="text" name="lokal" id="lokal"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="editB" value="Edit"></input><input
                    type="reset" value="Reset"></input><input type="submit" name="deleteB" value="Delete"></input></td>
        </tr>

    </table>
    <h3><%=(request.getAttribute("errMessage") == null) ? ""
            : request.getAttribute("errMessage")%></h3>

    <h3 id="succesMessage"><%=(request.getAttribute("Message") == null) ? ""
            : request.getAttribute("Message")%></h3>
</form>
</body>
</html>

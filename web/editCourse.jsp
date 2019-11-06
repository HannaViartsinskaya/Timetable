<%@ page import="com.mvc.bean.TimetableBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
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
<div class="breadcrumbs">
    <a href="index.jsp">Main</a>
    <a href="showAllSecondVersion.jsp">Timetable</a>
    <a class="active" href="editCourse.jsp">Edit course</a>
</div>
<h1>All courses for group ${groupN}</h1>

<table id="timetable1">
    <%
        List<TimetableBean> answerM =(ArrayList<TimetableBean>)session.getAttribute("tMonday");
        for(int i = 0; i< answerM.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerM.get(i).getId_course()%></td>
        <td><%=answerM.get(i).getDay()%></td>
        <td><%=answerM.get(i).getTimeBeggin()%></td>
        <td><%=answerM.get(i).getTimeEnd()%></td>
        <td><%=answerM.get(i).getSubject()%></td>
        <td><%=answerM.get(i).getTeacher()%></td>
        <td><%=answerM.get(i).getLokal()%></td>

    </tr>
    <%}%>

    <%
        List<TimetableBean> answerT =(ArrayList<TimetableBean>)session.getAttribute("tTuesday");
        for(int i = 0; i< answerT.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerT.get(i).getId_course()%></td>
        <td><%=answerT.get(i).getDay()%></td>
        <td><%=answerT.get(i).getTimeBeggin()%></td>
        <td><%=answerT.get(i).getTimeEnd()%></td>
        <td><%=answerT.get(i).getSubject()%></td>
        <td><%=answerT.get(i).getTeacher()%></td>
        <td><%=answerT.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerW =(ArrayList<TimetableBean>)session.getAttribute("tWednesday");
        for(int i = 0; i< answerW.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerW.get(i).getId_course()%></td>
        <td><%=answerW.get(i).getDay()%></td>
        <td><%=answerW.get(i).getTimeBeggin()%></td>
        <td><%=answerW.get(i).getTimeEnd()%></td>
        <td><%=answerW.get(i).getSubject()%></td>
        <td><%=answerW.get(i).getTeacher()%></td>
        <td><%=answerW.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerTh =(ArrayList<TimetableBean>)session.getAttribute("tThursday");
        for(int i = 0; i< answerTh.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerTh.get(i).getId_course()%></td>
        <td><%=answerTh.get(i).getDay()%></td>
        <td><%=answerTh.get(i).getTimeBeggin()%></td>
        <td><%=answerTh.get(i).getTimeEnd()%></td>
        <td><%=answerTh.get(i).getSubject()%></td>
        <td><%=answerTh.get(i).getTeacher()%></td>
        <td><%=answerTh.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerFr =(ArrayList<TimetableBean>)session.getAttribute("tFriday");
        for(int i = 0; i< answerFr.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable();">
        <td style="display:none;"><%=answerFr.get(i).getId_course()%></td>
        <td><%=answerFr.get(i).getDay()%></td>
        <td><%=answerFr.get(i).getTimeBeggin()%></td>
        <td><%=answerFr.get(i).getTimeEnd()%></td>
        <td><%=answerFr.get(i).getSubject()%></td>
        <td><%=answerFr.get(i).getTeacher()%></td>
        <td><%=answerFr.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerSa =(ArrayList<TimetableBean>)session.getAttribute("tSaturday");
        for(int i = 0; i< answerSa.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable()">
        <td style="display:none;"><%=answerSa.get(i).getId_course()%></td>
        <td><%=answerSa.get(i).getDay()%></td>
        <td><%=answerSa.get(i).getTimeBeggin()%></td>
        <td><%=answerSa.get(i).getTimeEnd()%></td>
        <td><%=answerSa.get(i).getSubject()%></td>
        <td><%=answerSa.get(i).getTeacher()%></td>
        <td><%=answerSa.get(i).getLokal()%></td>

    </tr>
    <%}%>
    <%
        List<TimetableBean> answerSu =(ArrayList<TimetableBean>)session.getAttribute("tSunday");
        for(int i = 0; i< answerSu.size(); i++){

    %>
    <tr onclick="myFunction(this);showTable();">
        <td style="display:none;"><%=answerSu.get(i).getId_course()%></td>
        <td><%=answerSu.get(i).getDay()%></td>
        <td><%=answerSu.get(i).getTimeBeggin()%></td>
        <td><%=answerSu.get(i).getTimeEnd()%></td>
        <td><%=answerSu.get(i).getSubject()%></td>
        <td><%=answerSu.get(i).getTeacher()%></td>
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
                document.getElementById("subject").value = this.cells[4].innerHTML;
                document.getElementById("teacher").value = this.cells[5].innerHTML;
                document.getElementById("lokal").value = this.cells[6].innerHTML;
                document.getElementById("groupName").value = "${groupN}";

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
<h3>Click twice on line, whose data you want to change</h3>
<form name="form" action="EditServlet" method="post" onsubmit="return validate()" >
    <table align="center" id="hiddTable" style="display: none">

        <tr style="display:none;">
            <td>ID</td>
            <td><input type="text" name="idCourse" id="idCourse"  readonly="readonly"/></td>
        </tr>
        <tr>
            <td>Time begin</td>
            <td><input type="text" name="timeBegin" id="timeBegin"/></td>
        </tr>
        <tr>
            <td>Time end</td>
            <td><input type="text" name="timeEnd" id="timeEnd" /></td>
        </tr>
        <tr>
            <td>Day</td>
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
            <td>Group</td>
            <td><input type="text" name="groupName" id="groupName" readonly="readonly"/></td>
        </tr>

        <tr>
            <td>Subject</td>
            <td><input type="text" name="subject" id="subject"/></td>
        </tr>
        <tr>
            <td>Teacher</td>
            <td><input type="text" name="teacher" id="teacher" /></td>
        </tr>
        <tr>
            <td>Lokal</td>
            <td><input type="text" name="lokal" id="lokal"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="editB" value="Edit"></input><input
                    type="reset" value="Reset"></input><input type="submit" name="deliteB" value="Delite"></input></td>
        </tr>

    </table>
    <h3><%=(request.getAttribute("errMessage") == null) ? ""
                   : request.getAttribute("errMessage")%></h3>

    <h3><%=(request.getAttribute("Message") == null) ? ""
            : request.getAttribute("Message")%></h3>
</form>
</body>
</html>

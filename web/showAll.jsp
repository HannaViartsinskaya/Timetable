<%@ page import="com.mvc.bean.TimetableBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: verti
  Date: 30.10.2019
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Timetable</title>
    <style>
        <%@include file='/resources/style.css' %>
    </style>


    <h1>Wszystkie zajecia dla grupy ${groupN}</h1>

</head>
<body>
<table id="timetable">
        <%
            List<TimetableBean> answerM =(ArrayList<TimetableBean>) request.getAttribute("tMonday");
            for(int i = 0; i< answerM.size(); i++){

        %>
    <tr onclick="myFunction(this)">
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
            List<TimetableBean> answerT =(ArrayList<TimetableBean>) request.getAttribute("tTuesday");
            for(int i = 0; i< answerT.size(); i++){

        %>
    <tr onclick="myFunction(this)">
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
            List<TimetableBean> answerW =(ArrayList<TimetableBean>) request.getAttribute("tWednesday");
            for(int i = 0; i< answerW.size(); i++){

        %>
    <tr onclick="myFunction(this)">
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
            List<TimetableBean> answerTh =(ArrayList<TimetableBean>) request.getAttribute("tThursday");
            for(int i = 0; i< answerTh.size(); i++){

        %>
    <tr onclick="myFunction(this)">
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
            List<TimetableBean> answerFr =(ArrayList<TimetableBean>) request.getAttribute("tFriday");
            for(int i = 0; i< answerFr.size(); i++){

        %>
    <tr onclick="myFunction(this)">
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
            List<TimetableBean> answerSa =(ArrayList<TimetableBean>) request.getAttribute("tSaturday");
            for(int i = 0; i< answerSa.size(); i++){

        %>
    <tr onclick="myFunction(this)">
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
            List<TimetableBean> answerSu =(ArrayList<TimetableBean>) request.getAttribute("tSunday");
            for(int i = 0; i< answerSu.size(); i++){

        %>
    <tr onclick="myFunction(this)">
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
<div id="center">
    <a href="/editCourse.jsp"  >
        <button id="btnAdd">Edit</button>
    </a>
</div>
<%--<script>--%>
<%--    // function myFunction(x) {--%>
<%--    //     alert("Row index is: " + x.rowIndex);--%>
<%--    // }--%>
<%--    // get selected row--%>
<%--    // display selected row data in text input--%>
<%--    function doSubmit(){--%>
<%--        var actionURL ="/EditCourseServlet";--%>
<%--// perform your operations--%>

<%--        myForm.submit(actionURL);--%>
<%--    }--%>
<%--function myFunction(x){--%>
<%--    var table = document.getElementById("timetable"),dIndex;--%>

<%--    for(var i = 0; i < table.rows.length; i++)--%>
<%--    {--%>
<%--        table.rows[i].onclick = function()--%>
<%--        {--%>
<%--            rIndex = x.rowIndex;--%>
<%--            console.log(rIndex);--%>
<%--            document.getElementById("idCourse").value = this.cells[0].innerHTML;--%>
<%--            document.getElementById("timeBegin").value = this.cells[2].innerHTML;--%>
<%--            document.getElementById("timeEnd").value = this.cells[3].innerHTML;--%>
<%--            document.getElementById("dayName").value = this.cells[1].innerHTML;--%>
<%--            document.getElementById("subject").value = this.cells[4].innerHTML;--%>
<%--            document.getElementById("teacher").value = this.cells[5].innerHTML;--%>
<%--            document.getElementById("lokal").value = this.cells[6].innerHTML;--%>
<%--            document.getElementById("groupName").value = "${groupN}";--%>

<%--        };--%>
<%--    }--%>
<%--}--%>


<%--    // edit the row--%>
<%--    function editRow()--%>
<%--    {--%>
<%--        table.rows[rIndex].cells[0].innerHTML = document.getElementById("idCourse").value;--%>
<%--        table.rows[rIndex].cells[1].innerHTML = document.getElementById("dayName").value;--%>
<%--        table.rows[rIndex].cells[2].innerHTML = document.getElementById("timeBegin").value;--%>
<%--        table.rows[rIndex].cells[3].innerHTML = document.getElementById("timeEnd").value;--%>
<%--        table.rows[rIndex].cells[4].innerHTML = document.getElementById("subject").value;--%>
<%--        table.rows[rIndex].cells[5].innerHTML = document.getElementById("teacher").value;--%>
<%--        table.rows[rIndex].cells[6].innerHTML = document.getElementById("lokal").value;--%>


<%--    }--%>

<%--</script>--%>
<%--<form>--%>
<%--    <form name="myForm" action="EditCourseServlet" method="post" >--%>
<%--        <table align="center">--%>
<%--            <tr style="display:none;">--%>
<%--                <td>ID</td>--%>
<%--                <td><input type="text" name="idCourse" id="idCourse"  readonly="readonly"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Time begin</td>--%>
<%--                <td><input type="text" name="timeBegin" id="timeBegin" /></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Time end</td>--%>
<%--                <td><input type="text" name="timeEnd" id="timeEnd"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Day</td>--%>
<%--                <td>--%>
<%--                    <select  name="dayName" id="dayName" id="dayName">--%>
<%--                        <option>Saturday</option>--%>
<%--                        <option>Sunday</option>--%>
<%--                        <option>Monday</option>--%>
<%--                        <option>Tuesday</option>--%>
<%--                        <option>Wednesday</option>--%>
<%--                        <option>Thursday</option>--%>
<%--                        <option>Friday</option>--%>
<%--                    </select>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Group</td>--%>
<%--                <td><input type="text" name="groupName" id="groupName" readonly="readonly"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Subject</td>--%>
<%--                <td><input type="text" name="subject" id="subject"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Teacher</td>--%>
<%--                <td><input type="text" name="teacher" id="teacher" /></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Lokal</td>--%>
<%--                <td><input type="text" name="lokal" id="lokal"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td><%=(request.getAttribute("errMessage") == null) ? ""--%>
<%--                        : request.getAttribute("errMessage")%></td>--%>
<%--            </tr>--%>

<%--            <tr>--%>
<%--                <td></td>--%>
<%--                <td><input type="submit"  onclick="doSubmit()" value="Edit"></input><input--%>
<%--                        type="reset" value="Reset"></input></td>--%>
<%--            </tr>--%>

<%--        </table>--%>
<%--    </form>--%>

<%--</form>--%>
</body>
</html>

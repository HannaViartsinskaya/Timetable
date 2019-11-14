<%@ page import="com.mvc.constants.Eng"%>
<%@ page import="com.mvc.constants.Pln"%>
<%--
  Created by IntelliJ IDEA.
  User: verti
  Date: 31.10.2019
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
    <style>
        <%@include file='/resources/style.css' %>
    </style>
    <script>
        function validate()
        {
            var timeBegin = document.form.timeBegin.value;
            var timeEnd = document.form.timeEnd.value;
            var dayName = document.form.dayName.value;
            var subject = document.form.subject.value;
            var teacher = document.form.teacher.value;
            var lokal = document.form.lokal.value;
            if (timeBegin==null || timeBegin=="" || timeEnd==null || timeEnd=="")
            {
                alert("Time can't be blank");
                return false;
            }
            else if (dayName==null || dayName=="")
            {
                alert("Day can't be blank");
                return false;
            }
            else if (subject==null || subject=="")
            {
                alert("Subject can't be blank");
                return false;
            }
            else if (teacher==null || teacher=="")
            {
                alert("Teacher can't be blank");
                return false;
            }
            else if (lokal==null || lokal=="")
            {
                alert("Lokal can't be blank");
                return false;
            }

        }
    </script>
</head>
<body>
<%String language=(String)session.getAttribute("selectedLanguage");

    String timeB = "Time begin (format HH:MM)";
    String timeE = "Time end (format HH:MM)";
    String day = "Day";
    String group = "Group";
    String subject = "Subject ";
    String teacher = "Teacher ";
    String lokal = "Room";
    String namePageAdd = "All courses for group";
    if(language!=null){
        if(language.equals("en")){

            timeB=Eng.timeB;
            timeE=Eng.timeE;
            day=Eng.day;
            group=Eng.group;
            subject=Eng.subject;
            teacher=Eng.teacher;
            lokal=Eng.lokal;
            namePageAdd =Eng.namePageAdd;
        }else {

            timeB=Pln.timeB;
            timeE=Pln.timeE;
            day=Pln.day;
            group=Pln.group;
            subject=Pln.subject;
            teacher=Pln.teacher;
            lokal=Pln.lokal;
            namePageAdd =Pln.namePageAdd;
        }
    }
%>
<div class="breadcrumbs">
    <a href="index.jsp">Main</a>
    <a class="active" href="addItem.jsp">Add course</a>
</div>
<h1><%=namePageAdd%></h1>
        <form name="form" action="AddExerciseServlet" method="post" onsubmit="return validate()">
            <table align="center">
            <tr>
            <td><%=timeB%></td>
        <td><input type="text" name="timeBegin" pattern="([01]?[0-9]{1}|2[0-3]{1}):[0-5]{1}[0-9]{1}" /></td>
            </tr>
            <tr>
            <td><%=timeE%></td>
            <td><input type="text" name="timeEnd"  pattern="([01]?[0-9]{1}|2[0-3]{1}):[0-5]{1}[0-9]{1}"/></td>
            </tr>
            <tr>
            <td><%=day%></td>
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
                    <td><%=group%></td>
                    <td>
                        <select  name="groupListForAdd" id="groupListForAdd">
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
            <td><%=subject%></td>
            <td><input type="text" name="subject" /></td>
            </tr>
            <tr>
            <td><%=teacher%></td>
            <td><input type="text" name="teacher" /></td>
            </tr>
            <tr>
            <td><%=lokal%></td>
            <td><input type="text" name="lokal" /></td>
            </tr>
            <tr>
            <td><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></td>
            </tr>
                <tr>
                    <td><%=(request.getAttribute("gr") == null) ? ""
                            : request.getAttribute("gr")%></td>
                </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="Add"></input><input
        type="reset" value="Reset"></input></td>
        </tr>

        </table>
        </form>
</body>
</html>

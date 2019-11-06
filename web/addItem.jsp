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
<div class="breadcrumbs">
    <a href="index.jsp">Main</a>
    <a class="active" href="addItem.jsp">Add course</a>
</div>
        <form name="form" action="AddExerciseServlet" method="post" onsubmit="return validate()">
            <table align="center">
            <tr>
            <td>Time begin</td>
        <td><input type="text" name="timeBegin" /></td>
            </tr>
            <tr>
            <td>Time end</td>
            <td><input type="text" name="timeEnd" /></td>
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
            <td>Subject</td>
            <td><input type="text" name="subject" /></td>
            </tr>
            <tr>
            <td>Teacher</td>
            <td><input type="text" name="teacher" /></td>
            </tr>
            <tr>
            <td>Lokal</td>
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

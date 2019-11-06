<%--
  Created by IntelliJ IDEA.
  User: verti
  Date: 30.10.2019
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      <%@include file='/resources/style.css' %>
    </style>
  </head>
  <body>
  <h2>Get timetable for week</h2>
  <form class="form" action="GroupsServlet" method="post">
<div id="alignSelect">
  <table id="indexPage">
    <tr>
  <td><h3>Select group: </h3></td>
   <td><select  name="groupList" id="groupList">
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
    <td><button class="indBtn" type="submit" name="SendGroup">Submit</button></td>
    </tr>
  </table>
</div>
  </form>

  <form class="form" action="PrintTimetableForTeacherServlet" method="post">
      <div id="alignSelect">
      <table id="indexPage">
          <tr>
              <td><h3>Teacher's surname</h3></td>
              <td><input type="text" name="teacher" id="teacher"></td>
              <td><button class="indBtn"  type="submit" name="SendTeacher">Get timetable</button></td>
          </tr>
      </table>
      </div>
  </form>
  <h2>Add course to timetable</h2>
<div id="center">
  <a href="/addItem.jsp"  >
    <button id="btnAdd">Add</button>
  </a>
</div>




  </body>
</html>

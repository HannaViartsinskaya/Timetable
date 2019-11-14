<%--
  Created by IntelliJ IDEA.
  User: verti
  Date: 30.10.2019
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mvc.constants.Eng"%>
<%@ page import="com.mvc.constants.Pln"%>
<html>
  <head>
    <title>$Title$</title>
    <style>
      <%@include file='/resources/style.css' %>
    </style>
      <script>
          function validate()
          {
              if(document.getElementById('teacher').value==''){
                  alert('the field teacher should not remain empty');
                  return false;
              }
          }
      </script>
  </head>
  <body>
  <form class="formL" action="LanguageServlet" method="post">
      <div class="dtranslate">
          <input type="submit"  id="en" class="translate" name="en" value="en"></input>
          <input type="submit"  id="pl" class="translate" name="pl" value="pl"></input>

      </div>
  </form>

  <%String language=(String)session.getAttribute("selectedLanguage");
      String getTimetable="Get timetable for week for group";
      String selectGroup="Select group:";
      String getTimetableT= "Get timetable for week for teacher";
      String teacherN = "Teacher\'s surname";
       String addCourse = "Add course to timetable";
      if(language!=null) {
          if (language.equals("en")) {
              getTimetable = Eng.getTimetable;
              selectGroup = Eng.selectGroup;
              getTimetableT = Eng.getTimetableT;
              teacherN = Eng.teacherN;
              addCourse = Eng.addCourse;
          } else {
              getTimetable = Pln.getTimetable;
              selectGroup = Pln.selectGroup;
              getTimetableT = Pln.getTimetableT;
              teacherN = Pln.teacherN;
              addCourse = Pln.addCourse;
          }
      }
  %>


  <h2 ><%=getTimetable%></h2>
  <form class="form" action="GroupsServlet" method="post">
<div id="alignSelect">
  <table id="indexPage">
    <tr>
  <td><h3  ><%=selectGroup%> </h3></td>
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
    <td><button class="indBtn" type="submit" name="SendGroup">OK</button></td>
    </tr>
  </table>
</div>
  </form>
  <h2 ><%=getTimetableT%></h2>
  <form class="form" action="PrintTimetableForTeacherServlet" method="post"  onsubmit="return validate()">
      <div id="alignSelect">
      <table id="indexPage">
          <tr>
              <td><h3 ><%=teacherN%></h3></td>
              <td><input type="text" name="teacher" id="teacher" ></td>
              <td ><button class="indBtn"  type="submit" name="SendTeacher" >OK</button></td>
          </tr>
      </table>
      </div>
  </form>
  <h2 ><%=addCourse%></h2>
<div id="center">
  <a href="/addItem.jsp"  >
    <button id="btnAdd">Add</button>
  </a>
</div>

  <h3 id="succesMessage"><%=(request.getAttribute("message") == null) ? ""
          : request.getAttribute("message")%></h3>


  </body>
</html>

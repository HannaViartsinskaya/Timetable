<%@ page import="com.mvc.bean.TimetableBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: verti
  Date: 30.10.2019
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%=(request.getAttribute("res") == null) ? ""
        : request.getAttribute("res")%>

<%--<%--%>
<%--    List<TimetableBean> allTimetable=(ArrayList<TimetableBean>) request.getAttribute("allTimetable");--%>
<%--    for(int i=0;i<allTimetable.size();i++){%>--%>
<%--       <%=allTimetable.get(i).toString()%>--%>
<%--    <%}%>--%>
//    for (TimetableBean tim: allTimetable) {
//
//        out.print(tim.getTimeBeggin());
//        out.print(tim.getTimeEnd());
//        out.print(tim.getDay());
//        out.print(tim.getGroupName());
//        out.print(tim.getSubject());
//        out.print(tim.getTeacher());
//    }
    %>

</body>
</html>

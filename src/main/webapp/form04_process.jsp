<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<table border="1">
  <tr>
    <th>요청 파라미터 이름</th>
    <th>요청 파라미터 값</th>
  </tr>
  <%
    request.setCharacterEncoding("UTF-8");

//    Enumeration : 열거형
    Enumeration paramNames = request.getParameterNames();

    while (paramNames.hasMoreElements()) {
//      .toString();
      String name = paramNames.nextElement().toString();
//      강제 형변환 해줘도 됨
//      String name = (String) paramNames.nextElement();

      out.print("<tr><td>" + name + "</td>\n");
      String paramValue = request.getParameter(name);
      out.print("<td>" + paramValue + "</td></tr>\n");
    }
  %>
</table>
</body>
</html>

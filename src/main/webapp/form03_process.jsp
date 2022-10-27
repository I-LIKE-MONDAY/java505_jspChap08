<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");

  String id = request.getParameter("id");
  String passwd = request.getParameter("passwd");
  String name = request.getParameter("name");
  String phone1 = request.getParameter("phone1");
  String phone2 = request.getParameter("phone2");
  String phone3 = request.getParameter("phone3");
  String gender = request.getParameter("gender");
//  String hobby1 = request.getParameter("hobby1");
//  String hobby2 = request.getParameter("hobby2");
//  String hobby3 = request.getParameter("hobby3");

//    배열로 getParameterValues 사용 하는 방법
  String[] hobby = request.getParameterValues("hobby");

  String comment = request.getParameter("comment");
%>

<p>아이디 : <%=id%></p>
<p>비밀번호 : <%=passwd%></p>
<p>이름 : <%=name%></p>
<p>연락처 : <%=phone1 + phone2 + phone3%></p>
<p>성별 : <%=gender%></p>

<%--<p>취미 : <%=hobby1%>, <%=hobby2%>, <%=hobby3%></p>--%>
<p>취미 : <%
    if (hobby != null) {
        for (int i = 0; i < hobby.length; i++) {
            out.print(" " + hobby[i]);
        }
    }
%></p>

<p>가입인사 : <%=comment%></p>
</body>
</html>

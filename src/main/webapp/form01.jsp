<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>form - 입력 태그</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h3>회원 가입</h3>
<form action="#" name="member" method="post">
  <p>아이디 : <input type="text" name="id"><button type="button"> 아이디 중복 검사</button></p>
  <p>비밀번호 : <input type="password" name="passwd"> </p>
  <p>이름 : <input type="text" name="name"></p>
  <p>연락처 : <input type="text" maxlength="4" size="4" name="phone1"> - <input type="text" maxlength="4" size="4" name="phone2"> - <input type="text" maxlength="4" size="4" name="phone3"></p>
  <p>성별 : <input type="radio" name="gender" value="남성" checked> 남성
  <input type="radio" name="gender" value="여성">여성</p>
  <p>취미 : 독서<input type="checkbox" name="hobby1" checked>
  운동<input type="checkbox" name="hobby2">
  영화<input type="checkbox" name="hobby3"></p>
  <p><button type="submit">가입하기</button>
  <button type="reset">다시쓰기</button> </p>
</form>
</body>
</html>

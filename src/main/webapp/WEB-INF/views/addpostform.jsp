<%--
  Created by IntelliJ IDEA.
  User: Jong Hyuk Park
  Date: 2023-12-01
  Time: 오후 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addok" method="post">

    <table>
        <tr><td>환자이름: </td><td><input type="text" name="patientName"/></td></tr>
        <tr><td>의사이름: </td><td><input type="text" name="doctorName"/></td></tr>



        <tr><td>환자나이: </td><td><input type="text" name="pAge"/></td></tr>
        <tr><td>증상: </td><td><input type="text" name="symptoms"/></td></tr>
    </table>

    <label for="membership">성별: </label>
    <select id="membership" name="pGender">
        <option value="M">남자</option>
        <option value="F">여자</option>
    </select>

    <br>
    <table>

        <tr><td>진료내용: </td><td><textarea cols="50" rows="5" name="specifications"></textarea></td></tr>

    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>
</body>
</html>

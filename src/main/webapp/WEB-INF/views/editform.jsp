<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Jong Hyuk Park
  Date: 2023-12-01
  Time: 오후 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="../editok">
    <input type="hidden" name="id" value=${u.id} />

    <table>
        <tr><td>환자이름: </td><td><input type="text" name="patientName" value="${u.patientName}"/></td></tr>
        <tr><td>의사이름: </td><td><input type="text" name="doctorName" value="${u.doctorName}"/></td></tr>



        <tr><td>환자나이: </td><td><input type="text" name="pAge" value="${u.pAge}"/></td></tr>
        <tr><td>증상: </td><td><input type="text" name="symptoms" value="${u.symptoms}"/></td></tr>
    </table>

    <label for="membership">성별: </label>
    <select id="membership" name="pGender" >
        <option value="M">남자</option>
        <option value="F">여자</option>
    </select>

    <br>
    <table>

        <tr><td>진료내용: </td><td><textarea cols="50" rows="5" name="specifications" >${u.specifications}</textarea></td></tr>

    </table>


    <button type="button" onclick="history.back()">취소하기</button>
    <button type="submit">수정하기</button>
</form>

</body>
</html>

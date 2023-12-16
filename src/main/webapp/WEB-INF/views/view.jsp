<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시물 정보</title>
</head>

<body>


<h1>자세한 정보 보기 </h1>
<table>
    <tr>
        <td>환자이름: </td><td>${u.patientName}</td>
    </tr>
    <tr>
        <td>의사이름: </td><td>${u.doctorName}</td>
    </tr>
    <tr>
        <td>성별: </td><td>${u.pGender}</td>
    </tr>
    <tr>
        <td>나이: </td><td>${u.pAge}</td>
    </tr>
    <tr>
        <td>증상: </td><td>${u.symptoms}</td>
    </tr>
    <tr>
        <td>진료내용: </td><td>${u.specifications}</td>
    </tr>
</table>

<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
<button type="button" onclick="location.href='../editform/${u.id}'">수정하기</button>

</body>
</html>

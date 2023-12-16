<%--
  Created by IntelliJ IDEA.
  User: Jong Hyuk Park
  Date: 2023-12-01
  Time: 오후 5:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Mediflow</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>

<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까? ");
        if(a) location.href='deleteok/' + id;
    }

    function view_ok(id) {
        location.href='view/' + id;
    }

</script>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Mediflow 환자 진료 기록 관리 서비스</h1>
<table id ="list" width="90%">
    <tr>
        <th>ID</th>
        <th>환자이름</th>
        <th>의사이름</th>
        <th>환자성별</th>
        <th>환자나이</th>
        <th>진료날짜</th>
        <th>증상</th>
        <th>진료내용</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr onclick="view_ok('${u.id}')">
            <td>${u.id}</td>
            <td>${u.doctorName}</td>
            <td>${u.patientName}</td>
            <td>${u.pGender}</td>
            <td>${u.pAge}</td>
            <td>${u.date}</td>
            <td>${u.symptoms}</td>
            <td>${u.specifications}</td>
            <td><a href="editform/${u.id}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.id}')" onclick="event.stopPropagation()">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<br/><a href="add">Add New Post</a>

</body>
</html>

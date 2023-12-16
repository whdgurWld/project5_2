<%@ page language= "java" contentType= "text/html; charset=UTF-8"
         pageEncoding= "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset= "UTF-8">
    <title>Insert title here </title>
    <style>
        .input {
            width: 30%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin: 8px;
        }

        .button {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            width: 30%;
            margin: 8px;
        }

        .button:hover {
            background-color: #2980b9;
        }

    </style>
</head>
<body>

<div style = 'width: 100% ;text-align:center; padding-top:100px'>
    <form method="post" action= "loginOk">
        <h3>Mediflow에 오신 것을 환영합니다.</h3>
        <div><input type= 'text' name= 'userid' class = "input" placeholder="User ID"/></div>
        <div></label><input type= 'password' name= 'password' class = "input" placeholder="Password"/></div>
        <button type='submit' class = "button">login</button>
    </form>
</div>
</body>
</html>
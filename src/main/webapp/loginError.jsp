<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .error-container {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            margin-top: 0;
            font-size: 24px;
        }
        p {
            margin-bottom: 20px;
        }
        a {
            color: #721c24;
            text-decoration: underline;
        }
        a:hover {
            color: #491217;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>로그인 실패</h1>
        <p>아이디 또는 비밀번호가 잘못되었습니다. 다시 시도해 주세요.</p>
        <a href="login.jsp">로그인 페이지로 돌아가기</a>
    </div>
</body>
</html>

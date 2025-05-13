<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chuyển đổi nhiệt độ</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            margin: 0;
            padding: 40px;
        }
        .container {
            background: white;
            max-width: 400px;
            margin: auto;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"], select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .result, .error {
            padding: 10px;
            border-radius: 4px;
            margin-top: 15px;
        }
        .result {
            background-color: #e6ffe6;
            color: #006600;
        }
        .error {
            background-color: #ffe6e6;
            color: #cc0000;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            width: 100%;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
	<h2>Chuyển đổi nhiệt độ</h2>
    
    <form action="convert" method="post">
        Nhiệt độ: <input type="text" name="temperature" value="${param.temperature}" />
        <br/>
        Chuyển đổi:
        <select name="type">
            <option value="CtoF" ${param.type == 'CtoF' ? 'selected' : ''}>Celsius → Fahrenheit</option>
            <option value="FtoC" ${param.type == 'FtoC' ? 'selected' : ''}>Fahrenheit → Celsius</option>
        </select>
        <br/><br/>
        <input type="submit" value="Chuyển đổi" />
    </form>

    <c:if test="${not empty result}">
        <p><b><c:out value="${result}" /></b></p>
    </c:if>
    <p>Số lượt yêu cầu đến ứng dụng: ${applicationScope.requestCount}</p>
    
</body>
</html>
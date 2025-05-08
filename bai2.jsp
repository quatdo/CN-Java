<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài 2 - JSP Bảng Sinh Viên</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .custom-table {
            color: #1a1a1a; 
            background-color: #f0f8ff; 
            border: 2px solid #007bff; 
        }
        .custom-table th,
        .custom-table td {
            border: 1px solid #007bff; 
            padding: 10px;
        }

        .custom-table th {
            background-color: #d1ecf1; 
            color: #0c5460;
        }
    </style>
</head>
<body class="p-4">

    <h2 class="text-center mb-4">Danh sách sinh viên</h2>

    <table class="table custom-table">
        <thead>
            <tr>
                <th>STT</th>
                <th>Mã SV</th>
                <th>Họ và tên</th>
                <th>Quê quán</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>SV01</td>
                <td>Lê Xuân Nam</td>
                <td>Hà Nội</td>
            </tr>
            <tr>
                <td>2</td>
                <td>SV02</td>
                <td>Trần Thị Bình</td>
                <td>Đà Nẵng</td>
            </tr>
            <tr>
                <td>3</td>
                <td>SV03</td>
                <td>Lê Văn Chung</td>
                <td>TP. Hồ Chí Minh</td>
            </tr>
        </tbody>
    </table>

</body>
</html>

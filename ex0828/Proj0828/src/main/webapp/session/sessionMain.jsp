<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");  // 날짜 표시 형식
    
    long creationTime = session.getCreationTime();  // 최초 요청(세션 생성) 시작
    String creationTimeStr = dateFormat.format(new Date(creationTime));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>
    <ul>
        <li>세션 유지 시간 : <%= session.getMaxInactiveInterval() %></li>
        <li>세션 아이디 : <%= session.getId() %></li>
        <li>최초 요청 시각 : <%= creationTimeStr %></li>
  
    </ul>
</h2>
</body>
</html>
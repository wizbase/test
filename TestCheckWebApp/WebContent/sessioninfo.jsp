<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Session 정보</title>
</head>
<body>

<h3>Session 정보 </h3> 
Attribute id 값 :<%=(String)request.getSession().getAttribute("id")%><br> 
isNew():<%=session.isNew()%><br> 
세션ID:<%=session.getId() %><br> 
세션생성시간:<%=new java.util.Date(session.getCreationTime()).toString() %><br> 
세션마지막접속시간:<%=new java.util.Date(session.getLastAccessedTime()).toString() %><br> 
<a href="logout.jsp">세션삭제하기</a> 


</body>
</html>
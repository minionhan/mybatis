<%@page import="service.CommentResultMapService"%>
<%@page import="model.Comment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//XML만으로 매핑구문과 결과매핑 처리
	//CommentMapperDynamicSql.xml의 selectCommentByPrimaryKey매핑 구문
	//Long commentNo = Long.parseLong(request.getParameter("commentNo"));
	Long commentNo =3l;
	CommentResultMapService commentResultMapService = new CommentResultMapService();
	Comment comment = commentResultMapService.selectByPrimaryKey(commentNo);
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
댓글번호 : <%=comment.getCommentNo() %><br>
작성자아이디 : <%=comment.getUserId() %><br>
작성시일 : <%=comment.getRegDate() %><br>
댓글내용 : <%=comment.getCommentContent() %><br>
</body>
</html>
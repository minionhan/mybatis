<%@page import="service.CommentResultMapService"%>
<%@page import="model.Comment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//XML만으로 매핑구문과 결과매핑 처리
	//CommentMapperResultmap.xml의 selectCommentByPrimaryKeyAssociation매핑 구문
	Long commentNo = Long.parseLong(request.getParameter("commentNo"));
	CommentResultMapService commentService = new CommentResultMapService(); 
	Comment comment = commentService.selectCommentByPrimaryKeyDiscriminator(commentNo);
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
댓글 번호 : <%=comment.getCommentNo() %><br>
작성자아이디 : <%=comment.getUserId() %><br>
작성일시 : <%=comment.getRegDate() %><br>
댓글내용 : <%=comment.getCommentContent() %><br>
</body>
</html>
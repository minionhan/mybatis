<%@page import="service.CommentResultMapService"%>
<%@page import="model.CommentUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//XML만으로 매핑구문과 결과매핑 처리
	//CommentMapperResultmap.xml의 selectCommentByPrimaryKeyAssociation매핑 구문
	Long commentNo = Long.parseLong(request.getParameter("commentNo"));
	CommentResultMapService commentService = new CommentResultMapService();  
	CommentUser commentUser = commentService.selectCommentByPrimaryKeyAssociation(commentNo);  
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
댓글 번호 : <%=commentUser.getComment().getCommentNo() %><br>
댓글작성자 : <%=commentUser.getComment().getUserId() %><br>
댓글작성일시 : <%=commentUser.getComment().getRegDate() %><br>
댓글내용 : <%=commentUser.getComment().getCommentContent() %><br>
<br>
댓글작성자 : <%=commentUser.getUser().getUserId() %><br>
댓글작성자명 : <%=commentUser.getUser().getUserName() %><br>
</body>
</html>
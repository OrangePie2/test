<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="check.js"></script>
<jsp:include page= "header.jsp"/>
<link rel= "stylesheet" type="text/css" href="css/"
</head>
<body style="background-color: puple;">
<h3 style="text-align:center"> 회원목록조회/수정</h3>

<table>
<tr><th>회원번호</th></tr><tr><th>회원성명</th></tr><tr><th>연락처</th></tr><tr><th>주소</th></tr><tr><th>가입일자</th></tr><tr><th>고객등급</th></tr><tr><th>도시코드</th></tr>
<c:forEach var="cost" items="${ }"

</table>


<jsp:include page= "footer.jsp"/> 
</body>
</html>
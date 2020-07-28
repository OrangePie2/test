<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <h3 style="background-color: blue;  height: 70px; color:white; text-align:center; line-height: 70px;">
쇼핑몰 회원관리 ver1.0
</h3>
 -->
<style>
table{
padding-top:20px;
width: 100%;
height: 40px;
border: 1px solid blue;
background-color : blue;
}
th{
 background-color: blue;
}
td{
background-color: #bbdefb;
 height: 40px;
}
</style>

<style>
input[type=button]{
background-color : #bbdefb;
border:0;
/* outline:0; */
font-size:12pt; 
color:white;
font-family: Georgia;
}
</style>

<table>
<tr>
<th>
<h3 style="color:white; text-align:center;">
쇼핑몰 회원관리 ver1.0</h3>
</th>
</tr>
<tr>
<td>
<input type ="button" value="회원 등록" onclick="location.href='join.jsp'">
<input type ="button" value="회원 목록조회/수정" onclick="location.href='rewrite.jsp'">
<input type ="button" value="회원 매출조회" onclick="location.href='money.jsp'">
<input type ="button" value="홈으로" onclick="location.href='home.jsp'">
</td>
</tr>
</table>
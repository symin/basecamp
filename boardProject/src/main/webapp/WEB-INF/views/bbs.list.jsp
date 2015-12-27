<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>방명록 목록</title>
</head>
<body>
<h1>방명록 목록</h1>
	<table border="1">
		<colgroup>
			<col width="50">
			<col width="200">
			<col width="115">
			<col width="115">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">이메일</th>
				<th scope="col">등록일</th>
				<th scope="col">수정일</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="item" items="${list}" varStatus="status">
                <tr>
                    <td>${item.idx}</td>
                    <td><a href="./${item.idx}">${item.email}</a></td>
                    <td>${item.datetime}</td>
                    <td>${item.updatetime}</td>
                </tr>
            </c:forEach>
		</tbody>
	</table>
	<br/>
	<input type="button" value="글쓰기" onclick="location.href='./write' ">


</body>
</html>
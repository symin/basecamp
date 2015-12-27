<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>방명록 세부 조회</title>

<script>
	function del() {
		if (confirm("삭제하시겠습니까?"))
			document.form.submit();
	}
</script>

</head>
<body>
<h1>방명록 세부 조회</h1>

	<form id="form" name="form" method="post" action="./delete">
		<input type="hidden" id="idx" name="idx" value="${object.idx}" />
	</form>
	
	<p>이메일 : ${object.email}</p>
	<div>본문  : ${object.content}</div>
	<div>
		<p>등록일 : ${object.datetime}</p>
		<p>수정일 : ${object.updatetime}</p>
	</div>
	<div>
		<input type="button" value="삭제" onclick="del()"> 
		<input type="button" value="수정" onclick="location.href='./write?idx=${object.idx}' "> 
		<input type="button" value="목록" onclick="location.href='./' ">
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ���� ��ȸ</title>

<script>
	function del() {
		if (confirm("�����Ͻðڽ��ϱ�?"))
			document.form.submit();
	}
</script>

</head>
<body>
<h1>���� ���� ��ȸ</h1>

	<form id="form" name="form" method="post" action="./delete">
		<input type="hidden" id="idx" name="idx" value="${object.idx}" />
	</form>
	
	<p>�̸��� : ${object.email}</p>
	<div>����  : ${object.content}</div>
	<div>
		<p>����� : ${object.datetime}</p>
		<p>������ : ${object.updatetime}</p>
	</div>
	<div>
		<input type="button" value="����" onclick="del()"> 
		<input type="button" value="����" onclick="location.href='./write?idx=${object.idx}' "> 
		<input type="button" value="���" onclick="location.href='./' ">
	</div>

</body>
</html>
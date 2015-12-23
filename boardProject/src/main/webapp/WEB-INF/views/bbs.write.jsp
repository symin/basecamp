<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form id="form">
		<div>
			<span>이메일</span> <input type="text" id="email" name="email"
				value="" />
		</div>
		<div>
			<span>비밀번호</span> <input type="password" id="pwd" name="pwd"
				value="" />
		</div>
		<div>
			<span>본문</span>
			<textarea id="content" name="content" rows="10" cols="20"></textarea>
		</div>
	</form>

	<div>
		<button>저장</button>
		<input type="button" value="목록" onclick="location.href='./' ">
	</div>


</body>
</html>
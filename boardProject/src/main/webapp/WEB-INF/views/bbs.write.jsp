<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>방명록 쓰기 </title>
</head>
<body>

	<h1>${message}</h1>
    <form id="form" method="post" action="./write_ok">
        <input type="hidden" name="idx" id="idx" value="${object.idx}" />
        <div>
            <span>이메일</span>
            <input type="text" id="email" name="email" value="${object.email}" />
        </div>
        <div>
            <span>비밀번호</span>
            <input type="text" id="pwd" name="pwd" value="${object.pwd}" />
        </div>
        <div>
            <span>본문</span>
            <textarea id="content" name="content" rows="10" cols="20">
                ${object.content}
            </textarea>
        </div>
        <div>
            <input type="submit" value="저장" />
            <input type="button" value="목록" onclick="location.href='./' ">
        </div>                
    </form>

</body>
</html>
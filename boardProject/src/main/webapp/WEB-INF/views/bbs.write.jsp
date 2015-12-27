<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<title>���� ���� </title>

<script>	
	function emailCheck() {
		var email = $("#email").val();
		var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		
		if(regex.test(email) === false) {  
		    alert("�߸��� �̸��� �����Դϴ�.");
		    $("#email").focus();
		    return false;  
		}
		else{
			$('form').submit();
		}
	
	}
</script>

</head>
<body>
<h1>���� ���</h1>

    <form id="form" method="post" action="./write_ok">
        <input type="hidden" name="idx" id="idx" value="${object.idx}" />
        <div>
            <span>�̸���</span>
            <input type="text" id="email" name="email" value="${object.email}" />
        </div>
        <div>
            <span>��й�ȣ</span>
            <input type="text" id="pwd" name="pwd" value="${object.pwd}" />
        </div>
        <div>
            <span>����</span>
            <textarea id="content" name="content" rows="10" cols="20">
                ${object.content}
            </textarea>
        </div>
        <div>
            <input type="button" value="����" onclick="emailCheck()"/>
            <input type="button" value="���" onclick="location.href='./' ">
        </div>                
    </form>

</body>
</html>
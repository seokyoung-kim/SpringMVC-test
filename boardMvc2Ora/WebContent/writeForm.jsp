<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/view/color.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="${bodyback_c}">
	<center>
		<b>글쓰기</b>
	</center>
	<br>
	<form method="post" name="writeform" action="/boardMvc2Ora/writePro.do"
		onsubmit="return writeSave()">
		<input type="hidden" name="num" value="${num}"> <input
			type="hidden" name="ref" value="${ref}"> <input type="hidden"
			name="re_step" value="${re_step}"> <input type="hidden"
			name="re_level" value="${re_level}">

		<table width="400" border="1" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td align="right" colspan="2" bgcolor="${value_c}"><a
					href="/boardMvc2Ora/list.do">글 목록</a></td>
			</tr>
			<tr>
				<td width="70" bgcolor="${value_c}" align="center">이름</td>
				<td width="330"><input type="text" size="10" maxlength="10"
					name="writer"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="${value_c}" align="center">제목</td>
				<td width="330">
				<c:if test="${num == 0}">
					<input type="text" size="40" maxlength="50" name="subject">
				</c:if> 
				<c:if test="${num != 0}">
					<input type="text" size="40" maxlength="50" name="subject"
							value="[답변]">
				</c:if>
				</td>
			</tr>
			<tr>
				<td width="70" bgcolor="${value_c}" align="center">Email</td>
				<td width="330"><input type="text" size="40" maxlength="30"
					name="email"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="${value_c}" align="center">내용</td>
				<td width="330"><textarea name="content" rows="13" cols="40"></textarea>
				</td>
			</tr>
			<tr>
				<td width="70" bgcolor="${value_c}" align="center">비밀번호</td>
				<td width="330"><input type="password" size="8" maxlength="12"
					name="passwd"></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="${value_c}" align="center"><input
					type="submit" value="글쓰기"> <input type="reset" value="다시작성">
					<input type="button" value="목록보기"
					OnClick="window.location='/boardMvc2Ora/list.do'"></td>
			</tr>
		</table>
	</form>

</body>
</html>
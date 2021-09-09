<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flow</title>

<script type="text/javascript">
    function goAdd(){
        location.href="${cpath}/file.do";
    }
    function goList(){
        location.href="${cpath}/fileList.do";
    }
    function goDel(board_idx){
    	location.href="${cpath}/fileDelete.do?board_idx="+board_idx;
    }
</script>
    
</head>
<body>
<div style="width: fit-content;">
<hr width = "100%" color="darkgray" size="3">
<h1>◎ 파일 확장자 차단</h1>
<hr width = "100%" color="black" size="3">
<h2>파일확장자에 따라 특정 형식의 파일을 첨부하거나 전송하지 못하도록 제한</h2>
<br>
<div>
	<div style="width: 20%; float: left;">
		<h3>고정 확장자</h3>
	</div>
	<div style="width: 100%; line-height: 4;">
		<form method="get" action="file.do">
			<label>
				<input type="checkbox" name="bat" value="bat">bat &nbsp;
				<input type="checkbox" name="cmd" value="cmd">cmd &nbsp;
				<input type="checkbox" name="com" value="com">com &nbsp;
				<input type="checkbox" name="cpl" value="cpl">cpl &nbsp;
				<input type="checkbox" name="exe" value="exe">exe &nbsp;
				<input type="checkbox" name="src" value="src">src &nbsp;
				<input type="checkbox" name="js" value="js">js &nbsp;
				<input type="reset" value="Reset">
			</label>
		</form>
	</div>
</div>
<div>
	<div style="width: 20%; float: left;">
		<h3>커스텀 확장자</h3>
	</div>
	<form id="frm1" method="post" action="${cpath}/fileInsert.do">
		<div style="width: 100%; line-height: 4;">
			<input type="text" class="extension" id="custom_extension" name="custom_extension" placeholder="확장자 입력" maxlength="20" style="width: 250px; height: 20px;">
			<input type="submit" value="+추가" onclick="goAdd">
			<br>
		</div>
	</form>
	<form id="frm2" method="post" action="${cpath}/fileList.do">
		<div style="width: 100%; line-height: 4;">
			<textarea class="add" id="custom_extension" name="custom_extension" style="margin-left: 20%;width: 57%;height: 300px;">
				<c:forEach var="vo" items="${list}">
					<input type="text" value="${vo.custom_extension}">
				</c:forEach>
			</textarea>
		</div>
	</form>
</div>

</div>
</body>
</html>
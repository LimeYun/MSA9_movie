<%@page import="movie.DTO.Keywords"%>
<%@page import="movie.Service.KeywordServiceImpl"%>
<%@page import="movie.Service.KeywordService"%>
<%@page import="movie.DTO.Users"%>
<%@ include file="/layout/jstl.jsp"%>
<%@ include file="/admin/layout/login.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>소개글 수정 화면</title>
<jsp:include page="/admin/layout/link.jsp"/>
<jsp:include page="/admin/layout/script.jsp"/>
<link rel="stylesheet" href="<%= root %>/admin/css/adminKeywordForm.css">

</head>
<%
	int keywordNo = Integer.parseInt(request.getParameter("keywordNo"));
	KeywordService keywordService = new KeywordServiceImpl();
	Keywords keyword = keywordService.select(keywordNo);
	int index = keyword.getImageUrl().indexOf("_",10);
	String imageName = keyword.getImageUrl().substring(index+1);
%>
<c:set var="keyword" value="<%=keyword%>" />
<c:set var="imageName" value="<%=imageName%>" />
<body>
	<div class="container">
		<jsp:include page="/admin/layout/sidebar.jsp" />
		<div class="main">
			<div class="mainhead">
				<h1>소개글 수정</h1>
			</div>
			<div class="mainbody">
				<div class="contentbox">
					<form id="keyword-update" action="adminKeywordUpdate_pro.jsp" method="post"
						enctype="multipart/form-data" onsubmit="return false;">
						<div class="content">
							<input type="hidden" name="keywordNo" value="<%=keywordNo%>">
							<input type="hidden" name="movieNo" value="<%=keyword.getMovieNo()%>">
							<div class="content-head">
								<p>제목</p>
								<input class="normal-input" type="text" name="title" value="${keyword.title}" maxlength="30" />
							</div>
							<div class="content-body">
								<div class="bodyform">
									<p>종류</p>
									<select class="select" id="type" name="type">
										<option value="food" <%= "food".equals(keyword.getType()) ? "selected" : "" %>>음식</option>
										<option value="place" <%= "place".equals(keyword.getType()) ? "selected" : "" %>>배경</option>
										<option value="music" <%= "music".equals(keyword.getType()) ? "selected" : "" %>>음악</option>
									</select>
								</div>
								<div class="bodyform">
									<p>줄거리</p>
									<textarea class="large-input" name="content" maxlength="255">${keyword.content}</textarea>
								</div>
							</div>
							<div class="content-foot">
								<p>이미지</p>
								<input type="hidden" name="imgUrl" value="${keyword.imageUrl}">								
								<input type="text" id="imagename" value="${imageName}" readonly> 
								<label class="btn-upload" for="file"> 첨부 </label> 
								<input class="file" type="file" name="imgae" id="file">
							</div>
						</div>
						<button class="updatebtn" onClick="update()">수정</button>
					</form>
					<button class="deletebtn" id="delconfirm" data="<%=keyword.getKeywordNo()%>" path="adminKeywordDelete_pro.jsp?keywordNo=">삭제</button>
				</div>
			</div>
		</div>
	</div>
	<script src="<%= root %>/admin/js/keyword.js"></script>
	<script>
		window.onload=function(){
			target=document.getElementById('file'); // file 아이디 선언
			target.addEventListener('change',function(){ // change 함수
		
				if(target.value.length){ // 파일 첨부인 상태일경우 파일명 출력
					document.getElementById("imagename").value = target.files[0].name;
				}else{ //버튼 클릭후 취소(파일 첨부 없을 경우)할때 파일명값 안보이게
					document.getElementById("imagename").value = "";
				}
			});
		}
	</script>
</body>
</html>
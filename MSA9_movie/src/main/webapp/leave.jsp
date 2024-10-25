<%@ include file="/layout/jstl.jsp" %>
<%@ include file="/layout/common.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Netstar - 영화 커뮤니티</title>
	<jsp:include page="/layout/meta.jsp" />
	<jsp:include page="/layout/link.jsp" />
	<%-- CSS 링크 파일 --%>
	<link rel="stylesheet" href="static/css/user.css">
	
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
	<%-- [Contents] ######################################################### --%>
		
  		<div class="user-category">
  		<input id="tab-1" type="radio" name="tab" class="edit-in tab-radio" onclick="location.href='infoUpdate.jsp'" >
  		<label for="tab-1" class="tab">회원 정보 수정</label>
  		<input id="tab-2" type="radio" name="tab" class="user-out tab-radio" checked >
  		<label for="tab-2" class="tab">회원 탈퇴</label>
		</div>
		
		
		
	<form class="user-leave" onsubmit="return checkId()">
 		<div class="info-leave">
 		 <label for="leave" id="leave">회원 탈퇴</label>
		
		
	      <div class="info">
        <div class="group">
          <label for="userid" class="label">아이디</label>
          <input id="userid"  type="text" class="input" name="id" >
          <span id="wrongId" class="wrongId-message"></span>
        </div>
        <div class="group">
          <label for="userpwd" class="label">비밀번호</label>
          <input id="userpwd" type="password" class="input">
          <span id="pwdError"></span>
        </div>
        <div class="group">
          <label for="userbirth" class="label">생년월일</label>
          <input id="userbirth" type="date" class="input">
        </div>
        <div class="group">
          <label for="mail"  class="label">이메일</label>
          <input id="mail" type="email" class="input" name="email">
          <span id="emailError"></span>
        </div>
      </div>
              
        <div id="leave-btn">
          <button type="submit" class="leave-btn" >탈퇴하기</button>
        </div>
        </div> <!-- 회원 탈퇴 끝 -->
    </form>
    

	
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
	<%-- JS 링크 파일 --%>
	<script src="static/js/script.js"></script>
	<script>
	
	/* 마우스 올렸을때 이벤트 */
		 $('.leave-btn').on('mouseover', function() {
	       $(this).css('color', 'white')
	       $(this).css('background-color', '#cba50fad')
			})
		 .on('mouseout', function() {    
	        $(this).css('color', 'white')
	        $(this).css('background-color', 'var(--sub-color)')
	    })
	
	/* 탈퇴 확인 스크립트 알림 */
		
	</script>
</body>
</html>
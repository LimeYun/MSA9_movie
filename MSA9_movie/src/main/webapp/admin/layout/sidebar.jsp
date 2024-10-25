<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/common.jsp" %>
<div class="menu">
	<h1>관리자 페이지</h1>
	<hr style="margin-bottom: 30px;">
	<h2>
		관리자<a href="adminLogin.jsp"><i class="fa fa-sign-out"
			aria-hidden="true"></i></a>
	</h2>
	<hr>
	<div class="item">
		<h3>
			<a href="">팝업 관리</a>
		</h3>
	</div>
	<div class="item">
		<h3>
			<a href="<%= root %>/admin/movie/adminMovieList.jsp">영화 게시글</a>
		</h3>
	</div>
	<div class="item">
		<h3>
			<a href="">회원 관리</a>
		</h3>
	</div>
	<div class="item">
		<h3>
			<a href="">회원 게시글</a>
		</h3>
	</div>
	<div class="item">
		<h3>
			<a href="">광고 설정</a>
		</h3>
	</div>
	<div class="item">
		<h3>
			<a href="">광고주 관리</a>
		</h3>
	</div>
	<div class="item">
		<h3>
			<a href="">광고글 관리</a>
		</h3>
	</div>
</div>
/**
 * 메인 페이지 script 
 */
$(function(){
	// 영화 정보 토글
	$(".info-view-btn").on("click",function(){
		console.log("show!")
		$(this).parents(".movie")
			.find(".right-box")
			.find(".info-box")
			.toggle()			
	});
	
	/**
	 * modal
	 */
	
	// 게시판 목록 열기
	$(".post-view-btn").click(function(){
		$("#modal-wrap").fadeIn()
		$(".modal-container").animate({top:"0px"},function(){
			console.log("modal Show!")
		});
	});
	
	// 키워드 목록 열기
	$(".keyword-view-btn").click(function(){
		$("#modal-wrap").fadeIn()
		$(".modal-container").animate({top:"0px"},function(){
			console.log("modal Show!")
		});
	});
	
	// modal close
	$("#close-modal").click(function(){
		console.log("modal Close...")
		$("#modal-wrap").fadeOut();
		$(".modal-container").animate({top:"100%"})
	})
});
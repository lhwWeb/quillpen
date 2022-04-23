<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글 쓰기, 게시글 세부페이지</title>
<link rel="stylesheet" href="/style/style_Common.css">
<script src="/source/jquery-3.6.0.min.js"></script>
<script src="/script/script.js"></script>
</head>
<body>
	<div id="wrap">
		<main>
			<!-- section#board_title : 게시글 상단 영역 시작 -->
			<section id="board_header">
				<div id="board_header_util" class="dFlex">게시글 상단 버튼(추천, 댓글,
					신고)</div>
				<div id="board_header_title">게시글 제목</div>
				<div id="board_header_subTitle">게시글 소제목</div>
				<div id="board_header_info">게시글 정보(작가명, 작성일자)</div>
			</section>
			<!-- section#board_title : 게시글 상단 영역 끝 -->

			<!-- section#board_content : 게시글 내용 영역 시작 -->
			<section id="board_content">
				<div id="board_content">게시글 내용 출력 공간</div>
				<!-- div#board_content-->
			</section>
			<!-- section#blog_info : 게시글 내용 영역 끝 -->

			<!-- ///////////////////////////////////////////////////////////////////////////// -->
			<!-- ///////////////// 게시글 수정, 글쓰기 시 버튼 출력 영역  /////////////////// -->
			<section id="board_btn" class="dFlex">
				<div id="board_btnArea">등록, 수정, 삭제 버튼 출력부분</div>
			</section>
			<!-- ///////////////// 게시글 수정, 글쓰기 시 여기까지만 출력 /////////////////// -->
			<!-- ///////////////////////////////////////////////////////////////////////////// -->

			<!-- section#board_comment : 게시글 댓글 영역 시작 -->
			<section id="board_comment">
				<div id="board_comment_info">
					댓글 : <span id="comment_cnt">숫자</span>
				</div>
				<!-- div#board_comment_info -->
				<div id="board_comment_List">
					<!-- ///////////////// 댓글 있을 시 반복 구역 시작 ///////////////// -->
					<div class="comment_read dFlex">
						<div class="comment_img">프로필이미지</div>
						<div class="comment_container">
							<div class="comment_content_info">
								<span class="writer">작성자</span> 작성일자
							</div>
							<div class="comment_content">댓글 출력부분</div>
						</div>
						<div class="hiddenValue">hidden input 작성 공간</div>
						<div class="comment_btn">신고, 삭제, 수정버튼</div>
						<!-- div.comment_container -->
					</div>
					<!-- div.comment_read -->
					<!-- ///////////////// 댓글 있을 시 반복 구역 끝 ///////////////// -->
				</div>
				<!-- div#board_comment_List -->

				<div id="board_comment_container">
					<div class="comment_write dFlex">
						<div class="comment_img">프로필이미지</div>
						<div class="comment_input">댓글 작성 공간</div>
						<div class="comment_btn">댓글 등록버튼</div>
					</div>
					<!-- div.comment_write -->
				</div>
				<!-- div#board_comment_container-->
			</section>
			<!-- section#board_comment : 게시글 댓글 영역 끝 -->

			<!-- section#board_writer : 게시글 작가 정보 영역 시작 -->
			<section id="board_writer">
				<div id="writer_container" class="dFlex">
					<div id="writer_info" class="dFlex">
						<div id="writer_name">작가이름</div>
						<div id="writer_title">작가 소개멘트</div>
					</div>
					<div id="writer_img">프로필이미지</div>
				</div>
			</section>
			<!-- section#board_writer : 게시글 작가 정보 영역 끝 -->

			<!-- section#bbs : 작가의 게시판 목록 영역 시작 -->
			<!-- ////// bbs에서 가져온 것으로 해당 부분에 css코드 있음 ////// -->
			<section id="bbs">
				<div id="bbs_container">게시글 영역 출력</div>
			</section>
			<!-- section#bbs : 작가의 게시판 목록 영역 끝 -->

			<!-- section#hidden : hidden input 영역 시작 -->
			<section id="hidden"></section>
			<!-- section#hidden : hidden input 영역 끝 -->
		</main>
	</div>
</body>
</html>
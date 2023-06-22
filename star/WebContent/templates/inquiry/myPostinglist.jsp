<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/inquiry/myPostinglist.css">
=======
<link rel="stylesheet" href="../../static/css/inquiry/myPostinglist.css">
>>>>>>> ebd3b5f64560de68450c6739a38ec4aa5d68fa82
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />

<meta charset="UTF-8">
<title>내가 작성한 글 내역</title>
</head>
<body>
	<div class="wrap show">
		<header id="menu">
            <section>
                <div>
                <img style="width: 150px;
    						height: 150px;
						    margin-left: -90px;
						    margin-top: -33px;" src="../../static/image/logo.png">
                </div>

                <h1>                 
                    <a href="" id="bannertext">Save The Animal Relationship</a>
                </h1>
				<button type="button" class="btn_srch srch_open">검색</button>
                <ul class="gnb_pc" >
                    <li><a class="bannertext" href="">내주변</a></li>
                    <li><a class="bannertext" href="">예약내역</a></li>
                    <li><a class="bannertext" href="">더보기</a></li>
                    <li><a class="bannertext" href="">로그인</a></li>
                </ul>
            </section>
        </header>
		<div class="sub_top_wrap">
			<div class="sub_top bg_kong_2">
				<h2>내가 작성한 글</h2>
			</div>
		</div>
		<div id="content" class="sub_wrap more_wrap">
			<nav>
				<ul>
					<li>
						<a href="info.jsp">내 정보 관리</a>
					</li>
					<li>
						<a href="../mypage/petsitterform.jsp">돌보미 신청</a>
					</li>
					<li>
						<a href="../mypage/carelist.jsp">돌봄 내역</a>
					</li>
					<li>
						<a href="../mypage/reservationlist.jsp">이용 내역</a>
					</li>
					<li>
						<a href="../mypage/review.jsp">이용후기</a>
					</li>
					<li>
						<a href="../mypage/report.jsp">신고목록</a>
					</li>
					<li>
						<a class="mypageatag" href="../inquiry/myPostinglist.jsp">내가 작성한 글</a>
					</li>
				</ul>
			</nav>
	<div class="align_rt">
		<!-- Inquiry -->
		<div class="inquiry">

			<!-- Tab -->
			<div class="tab">
				<span class="tab_btn active"><a href="../inquiry/myPostinglist.jsp">작성한 글 내역</a></span>
				<span class="tab_btn"><a href="../inquiry/myPostingwrite.jsp">작성한 글 수정</a></span>
			</div>

			<!-- 리스트 -->
			<div class="tab_each" style="display: block;">
				<ul class="show_list open_list" id="inquiry_list">
					<li onclick="$.inqReadPro(212510);">
					<a href="https://www.goodchoice.kr/more/inquiry#inquiry_list" class="list_que">
					<!-- 답변완료/ NEW 버튼 2벌임 -->
					<div>
						<div>
						<span>No. 1</span>
						<input type="checkbox" id="check1" value="1" name="inquiry_list" onclick="doOpenCheck(this);">
						</div>
						<b>이용문의</b>
							test 메시지 입니다. 
								<b class="reply_chk">답변완료</b>
					</div>
					<span>
                    작성일 2023. 04. 16 | 수정일 2023. 04. 20
                    </span>
					</a>

					<div class="list_ans" style="display: none;">
						<b class="title">문의</b>
						<div>test 메시지 입니다. 답변 없이 무시하셔도 됩니다. 감사합니다.</div>

						<div class="ans">
							<b class="title">답변</b><span class="date">작성일 2023. 04. 16 20:59:00</span>
								<div>반갑습니다. 여기어때 고객행복센터 해피니스 조민석 입니다. 문의주신 내용 관련 안내 드립니다.
									고객님, 문의주신 내용들에 대해서는 모두 답변드리고 있는 점 양해부탁드리며,  추가적인 문의가 있으신 경우 문의내용을 상세히 기재하여 문의주시면 안내 도와드리겠습니다.
									추가 문의 사항은 1:1문의 또는 [여기어때 APP] → [내 정보] → [1:1 카카오문의] 로 문의 주시기바랍니다. 
									여기어때 고객행복센터 해피니스 조민석 입니다. 편안한 하루 보내세요.  감사합니다.
								</div>
						</div>
					</div>
					</li>
					<li onclick="$.inqReadPro(212510);">
					<a href="https://www.goodchoice.kr/more/inquiry#inquiry_list" class="list_que">
					<!-- 답변완료/ NEW 버튼 2벌임 -->
					<div>
						<div>
						<span>No. 2</span>
						<input type="checkbox" id="check2" value="2" name="inquiry_list" onclick="doOpenCheck(this);">
						</div>
						<b>이용문의</b>
							test 메시지 입니다. 
								<b class="reply_chk">답변완료</b>
					</div>
					<span>
                    작성일 2023. 04. 16 | 수정일 2023. 04. 20
                    </span>
					</a>

					<div class="list_ans" style="display: none;">
						<b class="title">문의</b>
						<div>test 메시지 입니다. 답변 없이 무시하셔도 됩니다. 감사합니다.</div>

						<div class="ans">
							<b class="title">답변</b><span class="date">작성일 2023. 04. 16 20:59:00</span>
								<div>반갑습니다. 여기어때 고객행복센터 해피니스 조민석 입니다. 문의주신 내용 관련 안내 드립니다.
									고객님, 문의주신 내용들에 대해서는 모두 답변드리고 있는 점 양해부탁드리며,  추가적인 문의가 있으신 경우 문의내용을 상세히 기재하여 문의주시면 안내 도와드리겠습니다.
									추가 문의 사항은 1:1문의 또는 [여기어때 APP] → [내 정보] → [1:1 카카오문의] 로 문의 주시기바랍니다. 
									여기어때 고객행복센터 해피니스 조민석 입니다. 편안한 하루 보내세요.  감사합니다.
								</div>
						</div>
					</div>
					</li>
				</ul>
			</div>


					<section class="btn_wrap ">
						<input class="btn_blue_fill" type="button" value="수정하기" onclick="location.href='../inquiry/myPostingwrite.jsp'">
					</section>
			</div>
		</div>
		<!-- //Notice -->

		</div>
	</div>
</body>
<script type="text/javascript">
function doOpenCheck(chk){
    var obj = document.getElementsByName("inquiry_list");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}
</script>
</html>
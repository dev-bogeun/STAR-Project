<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 조회/수정</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/adminpage/adminconstructor.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/adminpage/changeinfo.css">
</head>
<body>
	<main>
		<nav>
			<div class="btns">
				<a id="gomain" href="메인 페이지">사이트 바로가기</a>
			</div>
			<ul class="menubar">
				<li><label for="btns"><input class="btns" type="button"
						value="메인페이지" onClick="location.href='mainadmin.jsp'"></label></li> 
				<li><label for="btns"><input class="btns" type="button"
						value="문의글 목록" onClick="location.href='select.answer'"></label></li>
				<li><label for="btns"><input class="btns" type="button"
						value="신고 목록" onClick="location.href='select.report'"></label></li>
				<li><label for="btns"><input class="btns selected"
						type="button" value="회원정보 조회/수정"
						onClick="location.href='select.user'"></label></li>
			</ul>
		</nav>
		<section class="mainadminpage">
			<form class="big-box"
				action="${pageContext.request.contextPath}/selectAll.user">
				<p>회원정보 수정/삭제</p>
				<div class="search-box">
					<select name="type">
						<option value="name">이름</option>
						<option value="id">ID</option>
						<option value="age">나이</option>
					</select> <input type="text" autocomplete="off" name="keyword" id="search">
					<input type="image" class="search"
						src="https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/search-512.png" />
					<input type="button" class="delete" name="delete" value="삭제하기" />
				</div>
				<div class="content">
					<table>
						<tr>
							<th><input type="checkbox" name="delete-report" class="all" /></th>
							<th>회원 번호</th>
							<th>이름</th>
							<th>ID</th>
							<th>주소</th>
							<th>나이</th>
							<th>성별</th>
							<th>전화번호</th>
							<th>이메일</th>
						</tr>
						<tr class="tr">
						</tr>
					</table>
					
					<!-- 페이지 -->
					<div id="paging-wrap">
						<c:if test="${prev}">
							<a href="${startPage - 1}" class="paging paging-move change-page"><img src="/static/image/prev.png" width="15px"></a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:choose>
								<c:when test="${i eq page}">
									<a href="javascript:void(0)" class="paging paging-checked"><c:out value="${i}" /></a>
								</c:when>
								<c:otherwise>
									<a href="/day01/select.user?page=${i} " class="paging change-page"><c:out value="${i}" /></a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${next}">
							<a href="${endPage + 1}" class="paging paging-move change-page"><img
								src="/static/image/next.png" width="15px"></a>
						</c:if>
					</div>
				</div>
			</form>
		</section>
	</main>
	<form action="${pageContext.request.contextPath}/select.user" name="page-form">
    	<input type="hidden" name="page" value="${page}">
    	<input type="hidden" name="sort" value="${sort}">
    	<input type="hidden" name="type" value="${type}">
    	<input type="hidden" name="keyword" value="${keyword}">
    </form>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	let users = `${users}`;
	let contextPath = `${pageContext.request.contextPath}`;
</script>
<script
	src="${pageContext.request.contextPath}/static/js/admin/admin.js"></script>

<script>
	const $all = $(".all");
	const $checkboxes = $(".term");
	$all.on("click", function() {
		$checkboxes.prop("checked", $(this).is(":checked"));
	});

	// 체크 박스 중 한 개라도 false일 경우 전체동의 해제(filter사용)

	$checkboxes.on("click", function() {
		$all.prop("checked", $checkboxes.filter(":checked").length == 10);
	});

	$checkboxes.each(function(i, checkbox) {
		if (!($(checkbox).is(":checked"))) {
			$all.prop("checked", false);
		}
	});
</script>
</html>
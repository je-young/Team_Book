<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세 정보</title>
</head>
<body>

	<jsp:include page="/header.jsp"></jsp:include>

    <div class="container mt-5">
        <h1>도서 상세 정보</h1>
        <div id="bookDetail">
            <!-- 도서 상세 정보가 동적으로 로드됩니다. -->
        </div>
        <button class="btn btn-secondary" onclick="history.back()">뒤로 가기</button>
    </div>
    <jsp:include page="/footer.jsp"></jsp:include>
    
	<script src="/Team_Books/board/view.js" type="text/javascript"></script>
	
</body>
</html>

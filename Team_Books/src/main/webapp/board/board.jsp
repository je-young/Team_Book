<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 관리 리스트</title>
</head>
<body>

	<jsp:include page="/header.jsp"></jsp:include>
	
    <div class="container mt-4">
        <h2 class="text-center">도서 목록</h2> <!-- 페이지 제목 -->
        
        <!-- 도서 목록을 표시하는 테이블 -->
        <table class="table table-striped mt-3">
            <thead>
                <tr>
                    <th>책번호</th> <!-- 도서의 고유 번호 -->
                    <th>도서명</th> <!-- 도서 제목 -->
                    <th>저자</th> <!-- 저자 이름 -->
                    <th>출판사</th> <!-- 출판사명 -->
                    <th>관리</th> <!-- 수정 및 삭제 기능을 위한 컬럼 -->
                </tr>
            </thead>
            <tbody id="book-list">
                <!-- JavaScript에서 동적으로 데이터 삽입 -->
            </tbody>
        </table>
        
        <!-- 도서 추가 페이지로 이동하는 버튼 -->
        <a href="/Team_Books/board/write.jsp" class="btn btn-primary">도서 등록</a>
    </div>
    
	<jsp:include page="/footer.jsp"></jsp:include>
	
	<script src="/Team_Books/js/board/board.js" type="text/javascript"></script>
	
</body>
</html>


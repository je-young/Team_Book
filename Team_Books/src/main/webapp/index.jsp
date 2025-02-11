<!-- 메인 페이지 (전체 도서 목록 조회) -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 관리 시스템</title>
    <!-- Bootstrap CSS 라이브러리 연결 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="index.css"> 사용자 정의 CSS 파일 연결 -->
</head>
<body>
	<!-- header.jsp 파일을 현재 JSP 페이지에 포함하여 재사용함 -->
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
            <tbody>
                <!-- JavaScript에서 동적으로 데이터 삽입 -->
            </tbody>
        </table>
        
        <!-- 도서 추가 페이지로 이동하는 버튼 -->
        <a href="/Team_Books/board/write.jsp" class="btn btn-primary">도서 등록</a>
    </div>
    
    <!-- header.jsp 파일을 현재 JSP 페이지에 포함하여 재사용함 -->
	<jsp:include page="/footer.jsp"></jsp:include>
    <!-- 부트스트랩 JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/Team_Books/js/board/board.js"></script> <!-- 도서 목록 관련 JavaScript 파일 연결 -->
</body>
</html>
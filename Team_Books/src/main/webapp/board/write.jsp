<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
    <!-- Bootstrap CSS 라이브러리 연결 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <jsp:include page="/header.jsp"></jsp:include>

    <div class="container mt-5">
        <h1>도서 등록</h1>
        <form>
            <div class="mb-3">
                <label for="btitle" class="form-label titleinput">도서명</label>
                <input type="text" class="form-control btitle" name="btitle" required>
            </div>
            <div class="mb-3">
                <label for="bwriter" class="form-label writerinput">저자</label>
                <input type="text" class="form-control bwriter" name="bwriter" required>
            </div>
            <div class="mb-3">
                <label for="bcompany" class="form-label companyinput">출판사</label>
                <input type="text" class="form-control bcompany" name="bcompany" required>
            </div>
            <button onclick="onWrite()" type="button" class="btn btn-primary">등록</button>
        </form>
    </div>
    <jsp:include page="/footer.jsp"></jsp:include>

    <!-- 부트스트랩 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- 주의할점 : JS 불러오는 순서 존재 하므로 내가 만든 JS를 가장 아래에서 호출 -->
    <script src="/Team_Books/js/board/write.js" type="text/javascript"></script>
</body>
</html>
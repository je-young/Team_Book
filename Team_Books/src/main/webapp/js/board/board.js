const loadBooks = () => {
	fetch('/book', { method: 'GET' }) // 전체 도서 목록 요청
        .then(r => r.json()) // JSON 데이터 변환
        .then(data => {
            console.log(data); // 받아온 데이터 콘솔에 출력
            
            // 테이블의 tbody 요소 선택
            const bookList = document.getElementById('book-list');
			if (!bookList) {
				console.log('book-list 요소가 없습니다!')
				return;
			} // if end
			
            let html = '';

            // 받아온 도서 데이터를 테이블 행(<tr>) 형태로 변환
            data.forEach(book => {
                html += `
                    <tr>
                        <td>${book.bno}</td>
                        <td><a href="view.jsp?bno=${book.bno}">${book.btitle}</a></td>
                        <td>${book.bwriter}</td>
                        <td>${book.bcompany}</td>
                        <td>
                            <button class="btn btn-warning btn-sm" onclick="editBook(${book.bno})">수정</button>
                            <button class="btn btn-danger btn-sm" onclick="deleteBook(${book.bno})">삭제</button>
                        </td>
                    </tr>
                `;
            });

            // 생성한 HTML을 테이블에 삽입
            bookList.innerHTML = html;
        })
        .catch(e => console.log('도서 목록 불러오기 실패:', e));
};

loadBooks(); // 페이지가 열리면 함수 실행








console.log('board.js ok')
const boardFindAll = () => {
    // 1. 어디에
    const tbody = document.querySelector('tbody');
    if (!tbody) {
        console.log('tbody 요소가 없습니다!');
        return;
    } // if end

    // 2. 무엇을
    let html = '';

    // 3. fetch 옵션 설정 (GET 요청)
    const option = { method: 'GET' };

    // 4. 전체 게시글 조회 요청
    fetch('/Team_Books/book', option)
        .then(response => response.json()) // JSON 변환
        .then(data => {
            // 5. 받아온 데이터를 반복하여 테이블 행으로 변환
            data.forEach(board => {
                html += `<tr>
							<td>${board.bno}</td>
                        	<td>
                            	<a href="view.jsp?bno=${board.bno}">
                                	${board.btitle}
                            	</a>
                        	</td>
                        	<td>${board.bwriter}</td>
                        	<td>${board.bdate}</td>
                        	<td>${board.bview}</td>
                    	</tr>`;
            });

            // 6. tbody에 HTML 삽입
            tbody.innerHTML = html;
        })
        .catch(error => console.log(error));
};

// 7. 페이지가 로드되면 자동 실행
boardFindAll();






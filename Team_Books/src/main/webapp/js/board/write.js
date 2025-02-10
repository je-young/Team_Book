// [1] 도서등록 요청 메소드
const onWrite = () => {
	// 첨부파일 있다 = form 전송 vs 첨부파일 없다 = form 또는 JSON
	// 1. 입력받은 값들을 가져오기 위해서 DOM 객체 호출
	const titleinput = document.querySelector('.titleinput');
	const writerinput = document.querySelector('.writerinput');
	const companyinput = document.querySelector('.companyinput');
	
	// 2. DOM 객체 에서의 입력받은 (value속성)값 호출
	const btitle = titleinput.value;
	const bwriter = writerinput.value;
	const bcompany = companyinput.value;
	
	// 3. 값들을 묶어주는 객체( json ) 만들기, json의 속성명은 rest명세서 맞게 정의
	let obj = { btitle : btitle , bwriter : bwriter , bcompany : bcompany }
	
	// 4. fetch option
	const option = {
		method : 'POST' , 
		headers : { 'Content-Type' : 'application/json' } ,
		body : JSON.stringify( obj ) // - JSON 형식(모양)의 문자열 타입으로 변환
	} // option end
	
	// 5.
	fetch( '/Team_Books/book' , option )
			.then( r => r.json() )
			.then( data => {
				if( data == true ){
					alert('등록 성공');
				}else{
					alert('등록 실패');
				} // if else end
			} ) // .then( data => { end
			.catch( e => { console.log(e); } )
	
} // onWrite end






document.getElementById("book-form").addEventListener("submit", function(event) {
    event.preventDefault();

    const bookData = {
        btitle: document.getElementById("btitle").value,
        bwriter: document.getElementById("bwriter").value,
        bcompany: document.getElementById("bcompany").value
    };

    fetch("/book", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(bookData)
    })
    .then(response => response.json())
    .then(success => {
        if (success) {
            alert("등록 완료!");
            window.location.href = "index.jsp";
        } else {
            alert("등록 실패!");
        }
    })
    .catch(error => console.error("도서 등록 오류:", error));
});







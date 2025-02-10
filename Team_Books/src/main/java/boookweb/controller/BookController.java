package boookweb.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import boookweb.model.dao.BookDao;
import boookweb.model.dto.BookDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/book")
public class BookController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 도서 등록(생성)기능
		// 1. http body 로 요청된 데이터들을 json ---> dto로 변환
		ObjectMapper mapper = new ObjectMapper();
		BookDto bookDto = mapper.readValue(req.getReader(), BookDto.class);
		// 2. dao
		boolean result = BookDao.getInstance().bookUpload(bookDto);
		// 3. dao 응답
		resp.setContentType("application/json");
		resp.getWriter().print(result);
		
	} // ce1
	
	// [2] 게시물 전체 조회
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("do get ok!!!");
		// [1] 요청 매개변수 X
		// [2] DAO에게 전체 게시물 요청하고 결과 받기
		ArrayList<BookDto> result = BookDao.getInstance().findAll();
		// [3] 받은 전체 게시물을 JSON 형식의 문자열로 변환하기
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(result);
		// [4] http response
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	} //fe
	
	// [3] 
   
}

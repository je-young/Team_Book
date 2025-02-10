package boookweb.controller;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import boookweb.model.dao.BookDao;
import boookweb.model.dto.BookDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/book/view")
public class BookViewController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("bookview test ok!!!");
		// [1] 개별 조회할 게시물 번호를 HTTP queryString 의 매개변수 값 가져오기
		int bno = Integer.parseInt(req.getParameter("bno"));
		// [2] dao에게 조회할 게시물 번호를 전달하고 결과를 응답 받는다.
		BookDto bookDto = BookDao.getInstance().findByBno(bno);
		// [3] dto 를 json으로 변환
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(bookDto);
		// [4] 타입 변환된 json형식의 문자열타입 자료를 http response 응답하기
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);

	} // fe
	

}

package boookweb.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import boookweb.model.dto.BookDto;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor( access = lombok.AccessLevel.PRIVATE)
public class BookDao extends Dao {
	// + 싱글톤
    
	@Getter
    private static BookDao instance = new BookDao();
    // private BookDao(){}
	// [1] 도서 등록
	public boolean bookUpload(BookDto bookDto) {
		try {
			// [1] sql 작성
			String sql = "insert into book( btitle, bwriter, bcompany ) values(?,?,?)";
			// [2] db와 연동된 곳에 sql 기재
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, bookDto.getBtitle());
			ps.setString(2, bookDto.getBwriter());
			ps.setString(3, bookDto.getBcompany());
			// [3] 기재된 sql 실행 및 결과받기
			int count = ps.executeUpdate();
			if( count ==1) return true;
		} catch (Exception e) {
			System.out.println(e);
		}return false;
	}
    // [2] 게시물 전제 조회 findAll SQL 메소드
	public ArrayList<BookDto> findAll(){
		ArrayList<BookDto> list = new ArrayList<BookDto>();
		try {
			// (1)
			// String sql ="select*from book";
			// (2) 도서 테이블의 모든 속성 조회 , inner join : 다른 테이블도 함께 조회할때 사용 , 조인 조건 주로 사용은 : pk-fk
			// select * from 테이블A inner join 테이블B on 테이블A.PK필드명 = 테이블B.FK필드명;
			// 정렬 : order by 필드명 desc=내림차순 , asc=오름차순
			String sql ="select * from book b order by b.bno desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				BookDto bookDto = new BookDto();
				bookDto.setBno(rs.getInt("bno"));
				bookDto.setBtitle(rs.getString("btitle"));
				bookDto.setBwriter(rs.getString("bwriter"));
				bookDto.setBcompany(rs.getString("bcompany"));
				bookDto.setUdate(rs.getString("udate"));
				bookDto.setCdate(rs.getString("cdate"));
				list.add(bookDto);
			}
		} catch (Exception e) {System.out.println(e);}
		return list;
	} //fe
	
	// [3] 게시물 개별 삭제 
	public boolean delete (int bno) {
		try {
			String sql="delete from book where bno =? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1 , bno);
			int count = ps.executeUpdate();
			if(count ==1)return true;
		} catch (Exception e) {System.out.println(e);}
	    return false;
	} //fe3
	
	// [4] 게시물 개별 수정 
	public boolean update(BookDto bookDto) {
		try {
			String sql = "update book set btitle=? , bwriter=? , bcompany=? where bno =?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, bookDto.getBtitle());
			ps.setString(2, bookDto.getBwriter());
			ps.setString(3, bookDto.getBcompany());
			ps.setInt(4,bookDto.getBno());
			int count = ps.executeUpdate();
			if(count==1) return true;
			
		} catch (Exception e) {System.out.println(e);}
        return false;	
	} //fe4
	
	// [5] 게시물 개별 조회 findByBno
	public BookDto findByBno(int bno) {
		try {
			// (1)
			String sql = "select * from book where bno = ?";
			// (2)
			// String sql = inner join~~~
			// (3) 서로 겹치는 곳에서의 공통 조회
			//string sql = "select * from book b"
			//		+" inner join member m on b.mno = m.mno"
			//		+" inner join category c on b.cno = c.cno"
			//		+ " where bno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, bno);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				BookDto bookDto = new BookDto();
				bookDto.setBno(rs.getInt("bno"));
				bookDto.setBtitle(rs.getString("btitle"));
				bookDto.setBcompany(rs.getString("bcompany"));
				bookDto.setUdate(rs.getString("udate"));
				bookDto.setCdate(rs.getString("cdate"));
				return bookDto;
			}
		}catch (Exception e) {System.out.println(e);}
	    return null;
	}//fe5
	
}

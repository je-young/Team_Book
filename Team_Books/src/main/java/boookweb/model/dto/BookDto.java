package boookweb.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@NoArgsConstructor@AllArgsConstructor
@Getter@Setter@ToString
public class BookDto {
	private int bno; // (책번호;고유id)
	private String btitle; // (도서명)
	private String bwriter; // (도서 저자)
	private String bcompany; //(도서 출판사)
	
	private String udate; // (도서 수정일자)
	private String cdate; // (도서 등록일자)

}

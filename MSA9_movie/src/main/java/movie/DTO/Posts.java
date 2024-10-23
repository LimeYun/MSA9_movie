package movie.DTO;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Posts {

	private int postNo;
	private int keywordNo;
	private int userNo;
	private String content;
	private int like;
	private Date regDate;
	private Date updDate;
	
}	

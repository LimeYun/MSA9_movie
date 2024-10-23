package movie.Service;

import movie.DTO.PersistenceLogins;

public interface PersistenceLoginsService {
	
	// 토큰 등록
	public PersistenceLogins insert(int no);
	
	// 토큰 조회(아이디)
	public PersistenceLogins select(int no);
	
	// 토큰 조회(토큰)
	public PersistenceLogins selectByToken(String token);
	
	// 토큰 수정
	public PersistenceLogins update(int no);
	
	// 토큰 갱신 (없으면 등록, 있으면 수정)
	public PersistenceLogins refresh(int no);
	
	// 토큰 유효성 체크(만료여부 확인)
	public boolean isValid(String token);
	
	// 토큰 삭제
	public boolean delete(int no);
}

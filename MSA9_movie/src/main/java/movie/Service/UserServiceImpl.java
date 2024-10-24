package movie.Service;

import java.util.HashMap;
import java.util.Map;

import movie.DAO.UserDAO;
import movie.DTO.Users;
import movie.utils.PasswordUtils;

public class UserServiceImpl implements UserService {

	UserDAO userDAO = new UserDAO();

	@Override
	public int signup(Users user) {
		int result = 0;
		user.setUserPwd( PasswordUtils.encoded(user.getUserPwd()) );
		try {
			result = userDAO.insert(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result > 0) 	System.out.println("회원 가입 성공.");
		else			System.out.println("회원 가입 실패.");
		return result;
	}

	@Override
	public Users select(String userId) {
		Map<Object, Object> map = new HashMap<Object, Object>() {{
            put("user_id", userId);
        }};
        Users user = null;
		try {
			userDAO.select(1);
			user = userDAO.selectBy(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	@Override
	public Users select(int userNo) {
		Map<Object, Object> map = new HashMap<Object, Object>() {{
            put("user_no", userNo);
        }};
        Users user = null;
		try {
			userDAO.select(1);
			user = userDAO.selectBy(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public int update(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Users login(Users user) {
		String userid = user.getUserId();				// 입력 받은 아이디d
		Users selectedUser = select(userid);	// 아이디 조회
		
		// 회원 가입이 안된 아이디
		if( selectedUser == null )
			return null;
		
		// 비밀번호 일치 여부 확인
		String password  = selectedUser.getUserPwd();	// 입력받은 패스워드
		String loginPwd  = user.getUserPwd();			// 조회된 아이디의 패스워드
		
		boolean checkPwd = PasswordUtils.check(loginPwd,password); // 일치여부 확인
		// 비밀번호 불일치
		if( !checkPwd )
			return null;
		
		// 로그인 성공
		System.out.println(userid + "님이 로그인 하였습니다.");
		return selectedUser;
	}

	

}

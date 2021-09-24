package com.site.p0823.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_DetailsVo;
import com.site.p0823.Vo.user_InquiryVo;
import com.site.p0823.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private JavaMailSender mailSender; // 메일 발송 객체

	// 회원가입
	@Override
	public void insertUserAdd(UserVo userVo) {
		userMapper.insertUserAdd(userVo);
	}

	// 이메일인증
	@Override
	public String emailCheck(String user_email, String email2) {
		// 메일내용저장 객체 선언
		SimpleMailMessage message = new SimpleMailMessage();
		String eMail = user_email + "@" + email2;
		// 임시번호 생성 - 10자리 임시번호
		String pwCode = getCreateKey();
		message.setTo(eMail); // 받는사람 이메일주소
		message.setFrom("space@gmail.com");// 자신의 이메일 주소
		message.setSubject("[ 공간 ] 회원가입 이메일인증 번호 안내"); // 제목

		// 메일 내용 저장
		String msgContent = "";
		msgContent += "[ 회원가입 이메일 인증번호 ]\n";
		msgContent += "인증번호 :" + pwCode;

		// 메일 내용
		message.setText(msgContent);

		// 메일발송
		mailSender.send(message);
		System.out.println("비밀번호 :" + pwCode);
		System.out.println("메일발송 완료!");
		return pwCode;
	}

	// 임시 비밀번호 생성
	public String getCreateKey() {
		String pwCode = "";
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
		int idx = 0;
		for (int i = 0; i < 10; i++) {
			// 36*Math.random()
			idx = (int) (charSet.length * Math.random());
			pwCode = pwCode + charSet[idx];
		}
		return pwCode;
	}

	// 로그인
	@Override
	public UserVo selectLoginOne(String in_userEmail, String in_userPw) {
		UserVo userVo;
		userVo = userMapper.selectLoginOne(in_userEmail, in_userPw);
		System.out.println(in_userPw);
		return userVo;
	}

	// 배송상세 이메일 가져오기
	@Override
	public UserVo selectUserOneSearch(int s_id) {
		UserVo userVo = userMapper.selectUserOneSearch(s_id);
		return userVo;
	}

	// 배송상세부분 회원상세 가져오기
	@Override
	public user_DetailsVo selectInformationYes(int s_id) {
		user_DetailsVo user_DetailsVo = userMapper.selectInformationYes(s_id);
		return user_DetailsVo;
	}

	// 배송상세부분 회원상세 저장하기
	@Override
	public void insertDetailsSet(user_DetailsVo user_DetailsVo, int s_id) {
		userMapper.insertDetailsSet(user_DetailsVo, s_id);
	}
	
	//고객 문의하기 저장
	@Override
	public void insertUserQuestionSet(user_InquiryVo inquiryVo) {
		userMapper.insertUserQuestionSet(inquiryVo);
	}

	//검색부분 회사
	@Override
	public ArrayList<CompanyVo> selectComSearchList(String search) {
		ArrayList<CompanyVo> Clist = userMapper.selectComSearchList(search);
		return Clist;
	}
	//검색부분 상품
	@Override
	public ArrayList<ProductVo> selectStoreSearchList(String search) {
		ArrayList<ProductVo> Slist = userMapper.selectStoreSearchList(search);
		return Slist;
	}

}// class

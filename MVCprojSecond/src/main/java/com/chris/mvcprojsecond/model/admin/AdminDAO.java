package com.chris.mvcprojsecond.model.admin;

import com.chris.mvcprojsecond.model.member.dto.MemberVO;

public interface AdminDAO {
	// 관리자 로그인체크
	public String loginCheck(MemberVO vo);
}
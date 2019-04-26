package com.chris.mvcprojsecond.service.admin;

import com.chris.mvcprojsecond.model.member.dto.MemberVO;

public interface AdminService {
	// 관리자 로그인체크
	public String loginCheck(MemberVO vo);
}
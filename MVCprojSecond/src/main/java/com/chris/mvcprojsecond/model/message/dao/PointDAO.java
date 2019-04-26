package com.chris.mvcprojsecond.model.message.dao;

public interface PointDAO {
	// 회원 포인트 갱신
	public void updatePoint(String userid, int upoint);
}
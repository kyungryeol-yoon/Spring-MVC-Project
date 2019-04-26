package com.chris.mvcprojsecond.model.shop.dao;

import java.util.List;

import com.chris.mvcprojsecond.model.shop.dto.CartVO;

public interface CartDAO {
	// 1. ��ٱ����߰�
	public void insert(CartVO vo);
	// 2. ��ٱ��� ����Ʈ
	public List<CartVO> listCart(String userId);
	// 3. ��ٱ��� ����
	public void delete(int cartId);
	// 4. ��ٱ��� ����
	public void modifyCart(CartVO vo);
	// 5. ��ٱ��� �ݾ� �հ�
	public int sumMoney(String userId);
	// 6. ��ٱ��� ��ǰȮ��
	public int countCart(int productId, String userId);
	// 7. ��ٱ��� ��ǰ���� ����
	public void updateCart(CartVO vo);
}
package com.spring.web.guest;

import java.util.List;


public interface GuestDAO {
	/*
	 * �������̽��� �ü� �ִ°���
	 * 1. public static final�� ����� Ŭ������ �ٷ� ���� ������ ���� �����
	 * �ü� �ִ�. ����� ���� ������ �� ���.
	 * 2. �߻�޼��常 �ü� �ִ�. 
	 */
	void insertGuest(GuestDTO g); //���� ����
	//public abstract�� ���. �߻�޼���
	List<GuestDTO> getGuestList();//���� ���
	int listCount();                 //�� ���ڵ� ����
	GuestDTO getGuestCont(int no);//���� ����
	void guestEdit(GuestDTO eg);  //���� ����
	void deleteGuest(int no);        //���� ����
}

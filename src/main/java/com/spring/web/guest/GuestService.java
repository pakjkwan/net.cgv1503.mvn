package com.spring.web.guest;

import org.springframework.stereotype.Service;

@Service
public class GuestService {
	private static GuestService instance;
	public static GuestService getInstance(){
		if(instance==null){
			instance = new GuestService();
		}
		return instance;
	}
	private GuestService(){}
}

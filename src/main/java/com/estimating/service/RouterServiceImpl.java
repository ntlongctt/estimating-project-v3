package com.estimating.service;

import org.springframework.stereotype.Service;

@Service
public class RouterServiceImpl implements IRouterService {
	@Override
	public int test() {
		return 100;
	}
}

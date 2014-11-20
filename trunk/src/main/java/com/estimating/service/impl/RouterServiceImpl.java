package com.estimating.service.impl;

import org.springframework.stereotype.Service;

import com.estimating.service.IRouterService;

@Service
public class RouterServiceImpl implements IRouterService {
	@Override
	public int test() {
		return 100;
	}
}

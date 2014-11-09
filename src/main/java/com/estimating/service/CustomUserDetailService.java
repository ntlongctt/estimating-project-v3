package com.estimating.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.estimating.dao.IUserDao;
import com.estimating.domain.User;
import com.estimating.utils.Constants;

@Service
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	private IUserDao userDAO;

	public UserDetails loadUserByUsername(String userName)
			throws UsernameNotFoundException {
		System.out.println("User name is: " + userName );
		// TODO Auto-generated method stub
		try {
			User usr = userDAO.getUserByUsername(userName);
			System.out.println("Username: " + usr.getTenUser() + "\nPassword: " + usr.getPass());
				boolean enabled = true;
				boolean accountNonExpired = true;
				boolean credentialsNonExpired = true;
				boolean accountNonLocked = true;
				return new org.springframework.security.core.userdetails.User(usr.getTenUser(),
						usr.getPass(), enabled, accountNonExpired,
						credentialsNonExpired, accountNonLocked,
						getAuthorities(usr.getRole().getMaRole()));
						
			} 
		 catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public Collection<? extends GrantedAuthority> getAuthorities(int role) {
		System.out.println("Role: " + role);
		List<GrantedAuthority> authList = getGrantedAuthorities(getRoles(role));
		return authList;
	}

	public List<String> getRoles(int role) {
		List<String> roles = new ArrayList<String>();
		if (role == Constants.ROLE_ADMIN) {
			roles.add("ROLE_ADMIN");
		} else {
			roles.add("ROLE_USER");
		}
		return roles;
	}

	public static List<GrantedAuthority> getGrantedAuthorities(
			List<String> roles) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (String role : roles) {
			authorities.add(new GrantedAuthorityImpl(role));
		}
		return authorities;
	}

}

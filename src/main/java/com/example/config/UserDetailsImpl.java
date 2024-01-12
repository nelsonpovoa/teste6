package com.example.config;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.entity.Customer;
import com.example.repository.CustomerRepo;
import com.example.security.model.SecurityCostumer;

@Service
public class UserDetailsImpl implements UserDetailsService{

	@Autowired
	CustomerRepo repo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		List<Customer> customer = repo.findByEmail(username);
		if (customer.size()==0) {
			throw new UsernameNotFoundException("User details are not found "+username);
		}
		return new SecurityCostumer(customer.get(0));
	}

}

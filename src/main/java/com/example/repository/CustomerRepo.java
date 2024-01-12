package com.example.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.entity.Customer;

public interface CustomerRepo extends CrudRepository<Customer, Long>{

		List<Customer> findByEmail(String email);
}

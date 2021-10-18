package com.aashdit.interview.gyame.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.aashdit.interview.gyame.model.Address;

@Repository
public interface AddressRepository extends JpaRepository<Address, Long> {

}

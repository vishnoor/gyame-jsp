package com.aashdit.interview.gyame.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.aashdit.interview.gyame.model.AddressTypeMaster;

@Repository
public interface AddressTypeMasterRepository extends JpaRepository<AddressTypeMaster, Long> {

}

package com.aashdit.interview.gyame.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.aashdit.interview.gyame.model.AddressTypeMaster;
import com.aashdit.interview.gyame.model.GenderMaster;
import com.aashdit.interview.gyame.repository.AddressTypeMasterRepository;
import com.aashdit.interview.gyame.repository.GenderMasterRepository;

public class MasterDataServiceImpl implements MasterDataService {

	@Autowired
	private AddressTypeMasterRepository addressTypeMasterRepository;
	
	@Autowired
	private GenderMasterRepository genderMasterRepository;
	
	@Override
	public List<AddressTypeMaster> getAllAddressTypes() {
		return addressTypeMasterRepository.findAll();
	}

	@Override
	public List<GenderMaster> getActiveGenders() {
		// TODO Change to fetch Active Gender Types only
		return genderMasterRepository.findAll();
	}

}

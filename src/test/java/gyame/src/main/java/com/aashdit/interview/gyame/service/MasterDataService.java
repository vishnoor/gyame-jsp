package com.aashdit.interview.gyame.service;

import java.util.List;

import com.aashdit.interview.gyame.model.AddressTypeMaster;
import com.aashdit.interview.gyame.model.GenderMaster;

public interface MasterDataService {

	List<AddressTypeMaster> getAllAddressTypes();
	
	List<GenderMaster> getActiveGenders();
}

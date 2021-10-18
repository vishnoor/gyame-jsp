package com.aashdit.interview.gyame.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_mst_address_type")
public class AddressTypeMaster implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7157635529633732515L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "address_type_id")
	private Long addressTypeId;
	
	@Column(name = "address_type_code")
	private String addressTypeCode;
	
	@Column(name = "address_type_desc")
	private String addressTypeDescription;

	public Long getAddressTypeId() {
		return addressTypeId;
	}

	public void setAddressTypeId(Long addressTypeId) {
		this.addressTypeId = addressTypeId;
	}

	public String getAddressTypeCode() {
		return addressTypeCode;
	}

	public void setAddressTypeCode(String addressTypeCode) {
		this.addressTypeCode = addressTypeCode;
	}

	public String getAddressTypeDescription() {
		return addressTypeDescription;
	}

	public void setAddressTypeDescription(String addressTypeDescription) {
		this.addressTypeDescription = addressTypeDescription;
	}
	
	
}

package com.cpi.is.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.cpi.is.entity.RawMaterialListEntity;

public interface RawMaterialListService {

	List<RawMaterialListEntity> getRawMaterialList() throws Exception;
	String saveItem(HttpServletRequest request) throws Exception;
	String deleteItem(HttpServletRequest request) throws Exception;
}
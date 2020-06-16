package com.petmily.mypet.persistence;

import java.util.List;

import com.petmily.mypet.domain.ImmuVO;
import com.petmily.mypet.domain.MedVO;
import com.petmily.mypet.domain.RsvnVO;
import com.petmily.mypet.domain.WeightVO;

public interface HealthMapper {
	int insertBasicImmu(ImmuVO immuVO);
	List<ImmuVO> selectBasicImmu(int petNo);
	int deleteBasicImmu(ImmuVO immuVO);
	
	int insertBoosterImmu(ImmuVO immuVO);
	List<ImmuVO> selectBoosterImmu(ImmuVO immuVO);
	int deleteBoosterImmu(ImmuVO immuVO);
	
	int insertDiImmu(ImmuVO immuVO);
	List<ImmuVO> selectDiImmu(ImmuVO immuVO);
	int deleteDiImmu(ImmuVO immuVO);
	
	List<RsvnVO> allRSVN(int reservationPetNo);
	RsvnVO selectRSVN(RsvnVO rsvnVO);
	
	List<MedVO> allMed(MedVO medVO);
	int insertMemMed(MedVO medVO);
	int deleteMemMed(int memMedRecordNo);
	
	RsvnVO latelyRSVN (int reservationNo);
	
	int insertWt(WeightVO weightVO);
	List<WeightVO> allWt(WeightVO weightVO);
	List<WeightVO> letelyWt(int petNo);
}

package com.petmily.mypet.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petmily.member.domain.MemberVO;
import com.petmily.mypet.domain.HosptMedVO;
import com.petmily.mypet.domain.ImmuVO;
import com.petmily.mypet.domain.PetVO;
import com.petmily.mypet.domain.RsvnVO;
import com.petmily.mypet.service.HealthService;
import com.petmily.mypet.service.MypetService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/hospitalAdmin/*")
@AllArgsConstructor
public class YourPetHealthController {
	
	private MypetService myService;
	private HealthService service;

	@InitBinder
	public void initBinder(WebDataBinder binder){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, false));
	}
	
	@GetMapping("/yourPetHealth")
	public void showHealth(Model model, @RequestParam("petNo") int petNo, @RequestParam("reservationNo") int reservationNo, HttpServletRequest request){
		PetVO petVO = new PetVO();
		petVO.setPetNo(petNo);
		RsvnVO rsvnVO = service.latelyRSVN(reservationNo);
		
		model.addAttribute("pet", myService.selectPetByNo(petVO));
		model.addAttribute("rsvn", rsvnVO);
	
	}
	

	
	
	
}

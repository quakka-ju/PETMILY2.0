package com.petmily.noti.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petmily.member.domain.MemberVO;
import com.petmily.noti.domain.NotiVO;
import com.petmily.noti.service.NotiService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/noti/*")
@AllArgsConstructor
public class NotiController {
	
	private NotiService service;
	
	@ResponseBody
	@PostMapping("/notiList")
	public List<NotiVO> notiList(Model model, HttpServletRequest request) {
		
		
		try {
			HttpSession session = request.getSession();
			
			MemberVO loginSession = (MemberVO)session.getAttribute("member");
			

			NotiVO notiVO = new NotiVO();
			notiVO.setMemId(loginSession.getId());
			
			return service.listNoti(notiVO);
			
			
		} catch (Exception e) {
			
			List<NotiVO> noSession = null;
			
			return noSession;
			
		}
		

	}
	
	@GetMapping("/notiList")
	public String notiList() {
		
		
		return "/pettalk/notiList";
	}
	
	
	
}
	
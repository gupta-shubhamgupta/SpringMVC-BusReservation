package com.busreservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.busreservation.dao.Reservation;

@Controller
public class ReservationController {

	@RequestMapping("/booking")
	public String booking(Model m) {
		Reservation res=new Reservation();
		m.addAttribute("reservation", res);
		return "reservation-page";
	}
	
	@RequestMapping("/submit")
	public String submit(@ModelAttribute("reservation") Reservation res) {
		return "confirmation-page";
	}
}




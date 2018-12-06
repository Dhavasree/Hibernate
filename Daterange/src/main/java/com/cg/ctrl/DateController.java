package com.cg.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DateController {
	@RequestMapping("/value")
	public String addDetails(@RequestParam("datetimepicker1") String datetimepicker1,@RequestParam("datetimepicker2") String datetimepicker2,Model model)
	{
		model.addAttribute("datetimepicker1", datetimepicker1);
		model.addAttribute("datetimepicker2", datetimepicker2);
		return "source";
		
	}

}

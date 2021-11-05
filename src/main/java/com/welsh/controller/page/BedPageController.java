package com.welsh.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.welsh.model.ProductImageListDto;

@Controller
public class BedPageController {

	
	//bed depth 1
		@RequestMapping("/BedMain.do")
		public String bedMain() {
			return "final/bed/bedMain";
		}
		
		
		//bed depth 2
		@RequestMapping("/Bed.do")
		public String bed() {
			return "final/bed/bed";
		}
		
		@RequestMapping("/Closet.do")
		public String closet() {
			return "final/bed/closet";
		}
		
		@RequestMapping("/Mattress.do")
		public String mattress() {
			return "final/bed/mattress";
		}
		
		//bed depth3 - bed
		
		@RequestMapping("/CabinetBed.do")
		public String cabinetBed() {
			return "final/bed/bed/cabinetBed";
		}
		
		@RequestMapping("/DayBed.do")
		public String dayBed() {
			return "final/bed/bed/dayBed";
		}
		
		@RequestMapping("/DivanBed.do")
		public String divanBed() {
			return "final/bed/bed/divanBed";
		}
		
		@RequestMapping("/KingBed.do")
		public String kingBed() {
			return "final/bed/bed/kingBed";
		}
		
		@RequestMapping("/SingleBed.do")
		public String singleBed() {
			return "final/bed/bed/singleBed";
		}
		
		@RequestMapping("/SofaBed.do")
		public String sofaBed() {
			return "final/bed/bed/sofaBed";
		}
		
		
		
		//bed depth3 - closet
		
		@RequestMapping("/entranceCloset.do")
		public String entranceCloset() {
			return "final/bed/closet/entranceCloset";
		}
		
		@RequestMapping("/KidsCloset.do")
		public String kidsCloset() {
			return "final/bed/closet/kidsCloset";
		}
		
		@RequestMapping("/OpenCloset.do")
		public String openCloset() {
			return "final/bed/closet/openCloset";
		}
		
		@RequestMapping("/OrderCloset.do")
		public String orderCloset() {
			return "final/bed/closet/orderCloset";
		}
		
		@RequestMapping("/PullCloset.do")
		public String pullCloset() {
			return "final/bed/closet/pullCloset";
		}
		
		@RequestMapping("/SlideCloset.do")
		public String slideCloset() {
			return "final/bed/closet/slideCloset";
		}
		
		

		//bed depth3 - mattress
		
		@RequestMapping("/BabyMattress.do")
		public String babyMattress() {
			return "final/bed/mattress/babyMattress";
		}
		
		@RequestMapping("/CusionPad.do")
		public String cusionPad() {
			return "final/bed/mattress/cusionPad";
		}
		
		@RequestMapping("/KidsMattress.do")
		public String kidsMattress() {
			return "final/bed/mattress/kidsMattress";
		}
		
		@RequestMapping("/LatexMattress.do")
		public String latexMattress() {
			return "final/bed/mattress/latexMattress";
		}
		
		@RequestMapping("/MattressTopper.do")
		public String mattressTopper() {
			return "final/bed/mattress/mattressTopper";
		}
		
		@RequestMapping("/SpringMattress.do")
		public String springMattress() {
			return "final/bed/mattress/springMattress";
		}
		
}

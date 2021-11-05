package com.welsh.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.welsh.model.ProductImageListDto;

@Controller
public class DiningPageController {

	//dining depth 1
			@RequestMapping("/DiningMain.do")
			public String diningMain() {
				return "final/dining/diningMain";
			}
			
			
			//dining depth 2
			@RequestMapping("/Chair.do")
			public String depth2chair() {
				return "final/dining/chair";
			}
			
			@RequestMapping("/Set.do")
			public String set() {
				return "final/dining/set";
			}
			
			@RequestMapping("/Table.do")
			public String table() {
				return "final/dining/table";
			}
			
			//dining depth3 - chair
			
			@RequestMapping("/BabyChair.do")
			public String babyChair() {
				return "final/dining/chair/babyChair";
			}
			
			@RequestMapping("/ChairChair.do")
			public String chair() {
				return "final/dining/chair/chair";
			}
			
			@RequestMapping("/CoverChair.do")
			public String coverChair() {
				return "final/dining/chair/coverChair";
			}
			
			@RequestMapping("/CoverChair2.do")
			public String coverChair2() {
				return "final/dining/chair/coverChair2";
			}
			
			@RequestMapping("/Foldable.do")
			public String foldable() {
				return "final/dining/chair/foldable";
			}
			
			@RequestMapping("/Pad.do")
			public String pad() {
				return "final/dining/chair/pad";
			}
			
			
			
			//dining depth3 - set
			
			@RequestMapping("/10people.do")
			public String tenpeople() {
				return "final/dining/set/10people";
			}
			
			@RequestMapping("/2people.do")
			public String twopeople() {
				return "final/dining/set/2people";
			}
			
			@RequestMapping("/4people.do")
			public String fourpeople() {
				return "final/dining/set/4people";
			}
			
			@RequestMapping("/6people.do")
			public String sixpeople() {
				return "final/dining/set/6people";
			}
			
			
			
			

			//dining depth3 - table
			
			@RequestMapping("/tenpeople.do")
			public String tentablepeople() {
				return "final/dining/table/10people";
			}
			
			@RequestMapping("/fourpeople.do")
			public String fourtablepeople() {
				return "final/dining/table/4people";
			}
			
			@RequestMapping("/sixpeople.do")
			public String sixtablepeople() {
				return "final/dining/table/6people";
			}
			
			@RequestMapping("/eightpeople.do")
			public String eighttablepeople() {
				return "final/dining/table/8people";
			}
			
			@RequestMapping("/Extendable.do")
			public String extendable() {
				return "final/dining/table/extendable";
			}
			
			@RequestMapping("/Frame.do")
			public String frame() {
				return "final/dining/table/frame";
			}
		
}

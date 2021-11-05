package com.welsh.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.welsh.model.ProductImageListDto;

@Controller
public class LivingroomPageController {

	

	//livingroom  depth 1
	@RequestMapping("/LivingroomMain.do")
	public String livingroomMain() {
		return "final/livingroom/livingroomMain";
	}
	
	
	//livingroom depth 2
	@RequestMapping("/Media.do")
	public String media() {
		return "final/livingroom/media";
	}
	
	@RequestMapping("/Sofa.do")
	public String sofa() {
		return "final/livingroom/sofa";
	}
	
	@RequestMapping("/Storage.do")
	public String storage() {
		return "final/livingroom/storage";
	}
	
	//livingroom depth3 - media
	
	@RequestMapping("/StorageMedia.do")
	public String storageMedia() {
		return "final/livingroom/media/storage";
	}
	
	@RequestMapping("/TvBench.do")
	public String tvBench() {
		return "final/livingroom/media/tvBench";
	}
	
	
	
	
	
	//livingroom depth3 - sofa
	
	//준식 작업
	
	@RequestMapping("/CoatedSofa.do")
	public String coatedSofa() {
		return "final/livingroom/sofa/coatedSofa";
	}
	
	@RequestMapping("/CusionSofa.do")
	public String cusionSofa() {
		return "final/livingroom/sofa/cusionSofa";
	}
	
	@RequestMapping("/FabricSofa.do")
	public String fabricSofa() {
		return "final/livingroom/sofa/fabricSofa";
	}
	
	@RequestMapping("/ModularSofa.do")
	public String modularSofa() {
		return "final/livingroom/sofa/modularSofa";
	}
	
	//livingroom depth3 - sofa
	@RequestMapping("/SofaBedSofa.do")
	public String SofaBedSofa() {
		return "final/livingroom/sofa/sofaBed";
	}
	
	@RequestMapping("/SofaCover.do")
	public String sofaCover() {
		return "final/livingroom/sofa/sofaCover";
	}
	
	
	//livingroom depth3 - storage
	@RequestMapping("/Buffet.do")
	public String buffet() {
		return "final/livingroom/storage/buffet";
	}
	
	@RequestMapping("/Cabinet.do")
	public String cabinet() {
		return "final/livingroom/storage/cabinet";
	}
	
	@RequestMapping("/Cabinet2.do")
	public String cabinet2() {
		return "final/livingroom/storage/cabinet2";
	}
	
	@RequestMapping("/Cabinet3.do")
	public String cabinet3() {
		return "final/livingroom/storage/cabinet3";
	}
	
	@RequestMapping("/System.do")
	public String system() {
		return "final/livingroom/storage/system";
	}
	
}

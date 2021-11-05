package com.welsh.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.welsh.model.ProductImageListDto;

@Controller
public class KitchenPageController {

	
	//Kitchen depth 1
	
			@RequestMapping("/KitchenMain.do")
			public String kitchenMain() {
				return "final/kitchen/kitchenMain";
			}
			
			//Kitchen depth 2
			@RequestMapping("/Item.do")
			public String item() {
				return "final/kitchen/item";
			}
			
			@RequestMapping("/Sink.do")
			public String sink() {
				return "final/kitchen/sink";
			}
			
			@RequestMapping("/Worktop.do")
			public String worktop() {
				return "final/kitchen/worktop";
			}
			
			//Kitchen depth 3 - item
			@RequestMapping("/Collection.do")
			public String collection() {
				return "final/kitchen/item/collection";
			}
			
			@RequestMapping("/Equipment.do")
			public String equipment() {
				return "final/kitchen/item/equipment";
			}
			
			@RequestMapping("/Organiser.do")
			public String organiser() {
				return "final/kitchen/item/organiser";
			}

			@RequestMapping("/Partition.do")
			public String partition() {
				return "final/kitchen/item/partition";
			}
			
			
			@RequestMapping("/Shelve.do")
			public String shelve() {
				return "final/kitchen/item/shelve";
			}
		
		
			//Kitchen depth 3 - sink
			@RequestMapping("/ItemSink.do")
			public String itemSink() {
				return "final/kitchen/sink/item";
			}
			
			@RequestMapping("/SinkSink.do")
			public String sinkSink() {
				return "final/kitchen/sink/sink";
			}
			
			@RequestMapping("/Tap.do")
			public String tap() {
				return "final/kitchen/sink/tap";
			}
			
			//Kitchen depth 3 - worktop
			@RequestMapping("/ItemWorktop.do")
			public String itemWorktop() {
				return "final/kitchen/worktop/item";
			}
			
			@RequestMapping("/WorktopWorktop.do")
			public String worktopWorktop() {
				return "final/kitchen/worktop/worktop";
			}
			
			@RequestMapping("/WorktopWorktop2.do")
			public String worktopWorktop2() {
				return "final/kitchen/worktop/worktop2";
			}
}

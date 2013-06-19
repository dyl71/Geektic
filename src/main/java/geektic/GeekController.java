package geektic;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/")
public class GeekController {
	
	@Autowired
	private GeekService service;
	
	@RequestMapping(method=RequestMethod.GET)
	public String list(ModelMap model) {
		List<Geek> geeks = service.list();
		model.addAttribute("geeks", geeks);
		model.addAttribute("geek", new Geek());
		return "home";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String add(@ModelAttribute Geek geek, ModelMap model) {
		service.AddGeek(geek);
		List<Geek> geeks = service.list();
		model.addAttribute("geeks", geeks);
		model.addAttribute("geek", new Geek());
		return "home";
	}
	

}

package com.lpsmuseum.webmuseum.controller;

import com.lpsmuseum.behaviour.museum.Navigation;
import com.lpsmuseum.dto.Annotation;
import com.lpsmuseum.dto.MuseologicalObject;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lpsmuseum.dto.Museum;
import com.lpsmuseum.dto.Scenario;
import com.lpsmuseum.dto.object.Image;
import com.lpsmuseum.service.AnnotationService;
import com.lpsmuseum.service.ImageService;
import com.lpsmuseum.service.MuseologicalObjectService;
import com.lpsmuseum.service.MuseumService;
import com.lpsmuseum.service.ScenarioService;
import com.lpsmuseum.service.builders.MuseologicalObjectBuilder;
import com.lpsmuseum.service.builders.MuseumBuilder;
import java.text.ParseException;
import java.util.Calendar;
import java.util.List;

@Controller
public class MuseumController
{

	MuseumService service = new MuseumService();

	@RequestMapping("/")
	public ModelAndView startApp(Long id)
	{
		return new ModelAndView("index");
	}

	@RequestMapping("exibicao")
	public ModelAndView exibicao(Long id, Long slidePos)
	{

		//Museum m = service.findById(new Long(0));
		ScenarioService serv = new ScenarioService();
		Scenario s = serv.findById(id);

		List<MuseologicalObject> list = s.getObjects();

		ModelAndView mv = new ModelAndView("exibicao");
		mv.addObject("objList", list);

		if(id != null)
		{
			mv.addObject("id", id);
		}
		else
		{
			mv.addObject("id", 1);
		}

		if(slidePos != null)
		{
			mv.addObject("slidePos", slidePos);
		}
		else
		{
			mv.addObject("slidePos", 0);
		}

		return mv;
	}

	@RequestMapping("info")
	public ModelAndView info(Long cenarioId, Long imgId, Long slidePos)
	{
		AnnotationService s = new AnnotationService();
		ImageService serv = new ImageService();
		
		Image ob = serv.findById(imgId);

		List<Annotation> a = s.listByObject(imgId);
		ModelAndView mv = new ModelAndView("info");
		
		mv.addObject("obj", a.get(0));
		mv.addObject("name", ob.getName());
		mv.addObject("cenarioId", cenarioId);
		mv.addObject("imgId", imgId);
		mv.addObject("slidePos", slidePos);

		return mv;
	}

	@RequestMapping("text")
	public ModelAndView text(Long cenarioId, Long imgId, Long slidePos)
	{
		MuseologicalObjectService moSvc = new MuseologicalObjectService();
		MuseologicalObject mObj = moSvc.findById(imgId);

		ScenarioService serv = new ScenarioService();
		Scenario s = serv.findById(imgId);

		ModelAndView mv = new ModelAndView("textoObra");
		mv.addObject("title", mObj.getName());
		mv.addObject("text", ((Image) mObj).getDescription());
		mv.addObject("cenarioId", cenarioId);
		mv.addObject("imgId", imgId);
		mv.addObject("slidePos", slidePos);
		return mv;
	}

	@RequestMapping("cenarios")
	public ModelAndView cenarios()
	{
		List<Scenario> listaCenarios = service.listScenariosByMuseumId(1l);
		ModelAndView mv = new ModelAndView("cenarios");
		mv.addObject("listaCenarios", listaCenarios);
		return mv;
	}
}

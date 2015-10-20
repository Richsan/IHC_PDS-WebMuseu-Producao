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
public class MuseumController {
    
    MuseumService service = new MuseumService();
    
    @RequestMapping("/")
    public ModelAndView startApp(Long id) {
        
       //Museum m = service.findById(new Long(0));
        ScenarioService serv = new ScenarioService();
        Scenario s = serv.findById(new Long(1l));
        List<MuseologicalObject> list = s.getObjects();
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("objList", list);
        if(id != null)
            mv.addObject("id", id);
        else
            mv.addObject("id", 0);
                    
        return mv;
    }
    
    @RequestMapping("info")
    public ModelAndView info(Long obj)
    {
        AnnotationService s = new AnnotationService();
        ImageService serv = new ImageService();
        Image ob = serv.findById(obj);
        List<Annotation> a = s.listByObject(obj);
        ModelAndView mv = new ModelAndView("info");
        mv.addObject("obj",a.get(0));
        mv.addObject("name",ob.getName());
        mv.addObject("id",obj);
        return mv;
    }
    @RequestMapping("text")
    public ModelAndView text(Long id)
    {
        AnnotationService s = new AnnotationService();
        List<Annotation> a = s.listByObject(id);
        ModelAndView mv = new ModelAndView(a.get(0).getTitle()+"Texto");
        return mv;
    }

    
}

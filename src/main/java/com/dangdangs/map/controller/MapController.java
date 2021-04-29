package com.dangdangs.map.controller;
import com.dangdangs.map.service.MapService;
import com.dangdangs.map.vo.MapVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class MapController {
    @Autowired
    private MapService service;

    @GetMapping("/naverApi")
    public ModelAndView list() {
        List<MapVO> hosList = service.selectAllMapMap();
        System.out.println("hosList: " + hosList);
        ModelAndView mav = new ModelAndView("naverApi/tm128");
        mav.addObject("hosList", hosList);
        return mav;
    }
}

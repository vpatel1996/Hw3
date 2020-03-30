package com.developer.SpringMYSQL.controllers;


import com.developer.SpringMYSQL.Models.AppUsers;
import com.developer.SpringMYSQL.Models.AppUsersRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class MainController {

    @Autowired
    AppUsersRepo appRepo;


    @RequestMapping("/")
    public ModelAndView home(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("list", appRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam("id") String id, @RequestParam("description") String description, @RequestParam("price") String price, @RequestParam("color") String color){
        ModelAndView mv = new ModelAndView("redirect:/");
        AppUsers productToSave ;
        if(!id.isEmpty())
        {
            Optional<AppUsers> product = appRepo.findById(Integer.parseInt(id));
            productToSave = product.get();
        }
        else
        {
            productToSave = new AppUsers();
        }
        productToSave.setdescription(description);
        productToSave.setprice(price);
        productToSave.setcolor(color);
        appRepo.save(productToSave);
        mv.addObject("list", appRepo.findAll());
        return mv;
    }

    @RequestMapping( value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView view(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("view");
        Optional<AppUsers> product = appRepo.findById(id);
        AppUsers productToMap = product.get();
        mv.addObject("selectedItem", productToMap);
        return mv;
    }

    @RequestMapping( value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        appRepo.deleteById(id);
        return mv;
    }

    @RequestMapping( value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit");
        Optional<AppUsers> product = appRepo.findById(id);
        AppUsers productToMap = product.get();
        mv.addObject("selectedItem", productToMap);
        return mv;
    }


}

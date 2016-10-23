package net.upmob.web;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PromoteController {


    @RequestMapping(value = "/promote")
    public ModelAndView protectedPage() {
        ModelAndView model = new ModelAndView();

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserDetails userDetail = (UserDetails) auth.getPrincipal();

        model.addObject("username", userDetail.getUsername());
        model.setViewName("redirect:/promote/orders");
        return model;

    }

    @RequestMapping(value = "/promote/orders")
    public ModelAndView promoteOrdersPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("promote/orders");
        return model;
    }

    @RequestMapping(value = "/promote/orders/create")
    public ModelAndView promoteOrdersCreatePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("promote/create");
        return model;
    }

    @RequestMapping(value = "/promote/payments")
    public ModelAndView promotePaymentsPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("promote/payments");
        return model;
    }

    @RequestMapping(value = "/promote/help")
    public ModelAndView promoteHelpPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("promote/help");
        return model;
    }

    @RequestMapping(value = "/promote/quests")
    public ModelAndView promoteQuestsPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("promote/customerhome");
        return model;
    }

    @RequestMapping(value = "/promote/settings")
    public ModelAndView promoteSettingsPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("promote/customerhome");
        return model;
    }

}

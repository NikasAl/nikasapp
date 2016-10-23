package net.upmob.web;

import net.upmob.domain.Word;
import net.upmob.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class WordController {

    @Autowired
    private WordService wordService;

//    @Autowired
//    private AnimalsService animalsService;

    @RequestMapping("/word")
    public String listWord(Map<String, Object> map) {

        map.put("word", new Word());
        map.put("wordList", wordService.listWord());

        return "words/words";
    }

    //pages block
    @RequestMapping("/index")
    public String mainPoint() {
        return "index";
    }

    @RequestMapping("/")
    public String mainPoint2() {
        return "index";
    }

    @RequestMapping("/indexreg")
    public String reg() {
        return "registration";
    }

    @RequestMapping("/indexregw")
    public String regWorker() {
        return "registration_worker";
    }

    @RequestMapping("/indexregc")
    public String regCustomer() {
        return "registration_customer";
    }

    @RequestMapping("/indexrules")
    public String rules() {
        return "rules";
    }


/*    @RequestMapping(value = "/promote")
    public ModelAndView protectedPage() {

        ModelAndView model = new ModelAndView();

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserDetails userDetail = (UserDetails) auth.getPrincipal();
        System.out.println(userDetail);

        model.addObject("username", userDetail.getUsername());
        model.setViewName("promote/customerhome");
        return model;

    }*/

    //service block

    @RequestMapping("/indexregform")
    public String registrationForm() {
        //пытаться зарегистрировать заказчика
        //переход на страницу (не)успешной регистрации
        return "index";
    }

    @RequestMapping("/indexauth")
    public String authForm() {
        return "index";
    }
    //mobile service block


    @RequestMapping("/deleteword/{wordId}")
    public String deleteWord(@PathVariable("wordId") Integer wordId) {

        wordService.removeWord(wordId);

        return "redirect:/word";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
                              @RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
        }

        if (logout != null) {
            model.setViewName("redirect:index");
            return model;
        }

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            model.setViewName("redirect:promote");
            return model;
        }

        model.setViewName("login");
        return model;

    }

    // customize the error message
    private String getErrorMessage(HttpServletRequest request, String key) {

        Exception exception = (Exception) request.getSession().getAttribute(key);

        String error = "";
        if (exception instanceof BadCredentialsException) {
            error = "Invalid username and password!";
        } else if (exception instanceof LockedException) {
            error = exception.getMessage();
        } else {
            error = "Invalid username and password!";
        }

        return error;
    }

    // for 403 access denied page
    @RequestMapping(value = "/403")
    public ModelAndView accesssDenied() {

        ModelAndView model = new ModelAndView();

        // check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            System.out.println(userDetail);

            model.addObject("username", userDetail.getUsername());

        }

        model.setViewName("403");
        return model;

    }

}

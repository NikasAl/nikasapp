package net.upmob.web;

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
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;

@Controller
public class SiteAppsController {

    enum AppNames {
        mahjong, spacetank3D, faceball3D;
    }

    private static Map<String, ResourceBundle> brs() {
        Map<String, ResourceBundle> RBs = new HashMap<String, ResourceBundle>();
        String lang = "en"; //Assign the correct language either by page or user-selected or browser language etc.

        for(AppNames appName : AppNames.values()) {
            ResourceBundle mgRB = ResourceBundle.getBundle(appName.name(), new Locale(lang));
            RBs.put(appName.name(), mgRB);
        }

        return RBs;
    }

    @Autowired
    private WordService wordService;

    //pages block
    @RequestMapping("/index")
    public String mainPoint() {
        return "index";
    }

    @RequestMapping("/")
    public String mainPoint2() {
        return "index";
    }

    private void fillMapWithResources(Map<String, Object> map, ResourceBundle mRB) {
        for (String key : mRB.keySet()) {
            map.put(key, mRB.getString(key));
        }
    }

    //apps pages
    @RequestMapping("/mahjong3DCube")
    public String mahjong3DCube(Map<String, Object> map) throws UnsupportedEncodingException {
        ResourceBundle mRB = brs().get(AppNames.mahjong.name());
        fillMapWithResources(map, mRB);
        return "app";
    }

    @RequestMapping("/spacetanks3D")
    public String spacetanks3D(Map<String, Object> map) {
        ResourceBundle mRB = brs().get(AppNames.spacetank3D.name());
        fillMapWithResources(map, mRB);
        return "app";
    }

    @RequestMapping("/faceball3D")
    public String faceball3D(Map<String, Object> map) {
        ResourceBundle mRB = brs().get(AppNames.faceball3D.name());
        fillMapWithResources(map, mRB);
        return "app";
    }

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

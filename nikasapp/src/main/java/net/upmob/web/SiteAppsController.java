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

    enum appNames {
        mahjong, spacetank3D
    }

    private static Map<String, ResourceBundle> brs() {
        Map<String, ResourceBundle> RBs = new HashMap<String, ResourceBundle>();
        String lang = "en"; //Assign the correct language either by page or user-selected or browser language etc.

        ResourceBundle mgRB = ResourceBundle.getBundle(appNames.mahjong.name(), new Locale(lang));
        RBs.put(appNames.mahjong.name(), mgRB);

        ResourceBundle spRB = ResourceBundle.getBundle(appNames.spacetank3D.name(), new Locale(lang));
        RBs.put(appNames.spacetank3D.name(), spRB);

        return RBs;
    }

    @Autowired
    private WordService wordService;

/*
    @RequestMapping("/word")
    public String listWord(Map<String, Object> map) {

        map.put("word", new Word());
        map.put("wordList", wordService.listWord());

        return "words/words";
    }
*/

    //pages block
    @RequestMapping("/index")
    public String mainPoint() {
        return "index";
    }

    @RequestMapping("/")
    public String mainPoint2() {
        return "index";
    }

    //apps pages
    @RequestMapping("/mahjong3DCube")
    public String mahjong3DCube(Map<String, Object> map) throws UnsupportedEncodingException {
        ResourceBundle mRB = brs().get(appNames.mahjong.name());

        for (String key : mRB.keySet()) {
            map.put(key, mRB.getString(key));
        }
        return "app";
    }

    @RequestMapping("/spacetanks3D")
    public String spacetanks3D(Map<String, Object> map) {
        map.put("title", "Space Tank 3D");
        map.put("mainImgStyle", "inner-container-btank");
        map.put("shortSlogan", "Defeat the Planet of tanks.\n" +
                               "Play with your friends over a network online\n");
        map.put("headImg", "btank_head.jpg");
        map.put("createDate", "June 06 2015");
        map.put("description",
                "<p>\n" +
                "    This is one of the arcade Tank games which make you be the hero of tank battle.\n" +
                "</p>\n" +
                "\n" +
                "<p>\n" +
                "    Explode all enemy to save turret of your panzer.\n" +
                "    Play battle in cyberspace city in urban strike mode\n" +
                "</p>\n" +
                "\n" +
                "<p>\n" +
                "    To defeat the aggressor, enslave the universe, you will need persistence and tactics. Not all enemy easily to explode. Some of them are armed with these weapons that cause you to strain. Great  Battle with iron cloud will you. Overcome 27 level firestorms. The World of the flat Planet need your help. Maze of fire is waiting you.\n" +
                "\n" +
                "    Drive the tank with the aid of the touchpad and methane projectiles towards the enemy invaders. Race with tank is unusual.\n" +
                "    Zoom / unzoom the battlefield to select the appropriate view.\n" +
                "    Turn view by horizontal paging gestures.\n" +
                "    Collect points - buy weapons.\n" +
                "    Save tank which play on your side.\n" +
                "    Your hero can collect shells and stick.\n" +
                "    Play with your friends in multiplayer mode online.\n" +
                "    The tank war is waiting you\n" +
                "\n" +
                "</p>\n");
        map.put("screenList", "btank1.jpg,btank2.jpg".split(","));
        map.put("video", "FbhrLMC6iWw");
        map.put("icon", "img_bt1.jpg");
        map.put("version", "v1.4");
        map.put("packageId", "ru.electronikas.tanksmashgpfree");
        map.put("apkFileName", "tanks-gp-free-release.apk");
        map.put("apkSize", "14");
        map.put("features", "3D battlefield,5 types of weapon,Multiplayer / Duel / Network,Zoom in / out camera,30+ levels,And much more!".split(","));

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

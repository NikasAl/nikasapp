package ru.electronikas.words.web.controllers;


import junit.framework.Assert;
import net.upmob.domain.Word;
import net.upmob.web.WordController;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.validation.BindingResult;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:*/root-context.xml"})
public class WordControllerTest {

    @Autowired
    WordController wordController;

    @Test
    @Ignore
    public void getWordlistTest() {
        Map parameters = new HashMap();
        wordController.listWord(parameters);
        List<Word> wordList = (List<Word>) parameters.get("wordList");
        Assert.assertTrue(wordList!=null);
    }

    @Test
    @Ignore
    public void getAddWordTest() {
        Map parameters = new HashMap();
        Word word = new Word();
        word.setEngword("hug");
        word.setRusword("");
        BindingResult bindingresult = null;
        //wordController.addWord(word, bindingresult);
        wordController.listWord(parameters);
        List<Word> wordList = (List<Word>) parameters.get("wordList");
        boolean isThisWordExist = false;
        for (Word wrd : wordList) {
            if(wrd.getEngword().equals("hug") && !wrd.getRusword().equals("")) {
                isThisWordExist = true;
            }
        }

        Assert.assertTrue(isThisWordExist);
    }
}

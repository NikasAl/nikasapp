package ru.electronikas.words.service;

import net.upmob.domain.Word;
import net.upmob.service.WordService;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:*/root-context.xml"})
public class WordServiceTest {

    @Autowired
    WordService wordService;

    @Test
    @Ignore
    public void insertWordTest() {
        List<Word> words = wordService.listWord();
        int size = words.size();

        Word word = new Word();
        word.setEngword("engword");
        word.setRusword("rusword");
        wordService.addWord(word);

        words = wordService.listWord();
        Assert.assertEquals(size + 1,words.size());
    }

}

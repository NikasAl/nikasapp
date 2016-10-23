package ru.electronikas.words.dao;

import net.upmob.dao.WordDAO;
import net.upmob.domain.Word;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:*/root-context.xml"})
public class WordDaoTest {

    @Autowired
    WordDAO dao;

    @Test
    @Transactional
    @Ignore
    public void daoTest() {
        List<Word> words = dao.listWord();
        int size = words.size();

        Word word = new Word();
        word.setEngword("engword");
        word.setRusword("rusword");
        dao.addWord(word);

        words = dao.listWord();
        Assert.assertEquals(size + 1,words.size());
    }

}

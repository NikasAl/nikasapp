package net.upmob.service;

import net.upmob.dao.WordDAO;
import net.upmob.domain.Word;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class WordServiceImpl implements WordService {

    @Autowired
    private WordDAO wordDAO;  //создает объект по умолчанию с параметрами null.

    @Transactional
    public void addWord(Word word) {
        wordDAO.addWord(word);        //2
    }

    @Transactional
    public List<Word> listWord() {
        return wordDAO.listWord();
    }


    @Transactional
       public void removeWord(Integer wordId) {
           wordDAO.deleteWord(wordId);
       }
}

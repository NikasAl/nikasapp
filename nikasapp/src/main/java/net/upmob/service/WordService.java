package net.upmob.service;

import net.upmob.domain.Word;
import java.util.List;

public interface WordService {

    public void addWord(Word word);

    public List<Word> listWord();

    void removeWord(Integer wordId);
   }

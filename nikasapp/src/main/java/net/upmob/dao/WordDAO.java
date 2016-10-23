package net.upmob.dao;



import net.upmob.domain.Word;
import java.util.List;

public interface WordDAO {

    public void addWord(Word word);

    public List<Word> listWord();

    void deleteWord(Integer wordId);
   }
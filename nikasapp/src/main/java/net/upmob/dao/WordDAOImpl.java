package net.upmob.dao;


import net.upmob.domain.Word;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WordDAOImpl implements WordDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addWord(Word word) {
        sessionFactory.getCurrentSession().save(word);    //3
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Word> listWord() {
        return sessionFactory.getCurrentSession().createQuery("from Word")
                .list();
    }

    @Override
        public void deleteWord(Integer wordId) {
            Word word = (Word) sessionFactory.getCurrentSession().load(Word.class, wordId);
            if (null != word) {
                sessionFactory.getCurrentSession().delete(word);

            }
    //        sessionFactory.getCurrentSession().createQuery("delete from Word wr where wr.id=:id").setParameter("id",wordId);
        }

}

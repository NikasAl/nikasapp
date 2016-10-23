package net.upmob.domain;

import javax.persistence.*;

@Entity
@Table(name = "WORDS")
public class Word {

    @Id
    @Column(name = "ID")
    @GeneratedValue
    private Integer id;

    @Column(name = "rus_word")
    private String rusword;

    @Column(name = "eng_word")
    private String engword;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRusword() {
        return rusword;
    }

    public void setRusword(String rusword) {
        this.rusword = rusword;
    }

    public String getEngword() {
        return engword;
    }

    public void setEngword(String engword) {
        this.engword = engword;
    }

// Getters and setters

}

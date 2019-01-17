/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mum.cs472;

/**
 *
 * @author lukpheakdey
 */

public class Entries {
    
    private String word;
    private String wordtype;
    private String definition;

    public Entries(String word, String wordtype, String definition) {
        this.word = word;
        this.wordtype = wordtype;
        this.definition = definition;
    } 
    
    public void setWord(String word) {
        this.word = word;
    }

    public void setWordtype(String wordtype) {
        this.wordtype = wordtype;
    }

    public void setDefinition(String definition) {
        this.definition = definition;
    }

    public String getWord() {
        return word;
    }

    public String getWordtype() {
        return wordtype;
    }

    public String getDefinition() {
        return definition;
    } 
}

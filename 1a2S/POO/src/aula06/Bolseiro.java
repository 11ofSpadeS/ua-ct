package aula06;

import aula05.DateYMD;

public class Bolseiro extends Aluno{
    private int bolsa;
    private Professor orientador;

    public Bolseiro(String name, int cc, DateYMD birthDate, DateYMD regDate , Professor orientador , int bolsa ) {
        super(name, cc, birthDate, regDate);
        this.orientador = orientador;
        this.bolsa = bolsa;
    }

    public int getBolsa() {
        return bolsa;
    }

    public Professor getOrientador(){
        return orientador;
    }

    public void setBolsa(int bolsa){
        this.bolsa = bolsa;
    }

    @Override
    public String toString() {
        return String.format("%s; CC: %d ; Data de Nascimento: %s ; NMec: %d ; Valor da Bolsa: %d; \n Orientador: [ %s ]" , getName() , getCc() , getBirthdate() , getNMec() , this.bolsa, this.getOrientador());
    }
}

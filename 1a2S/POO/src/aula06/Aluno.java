package aula06;

import aula05.DateYMD;


public class Aluno extends Pessoa{

    private int NMec = 100;
    private DateYMD regDate;

    public Aluno(String name, int cc, DateYMD birthDate , DateYMD regDate) {
        super(name, cc, birthDate);
        this.NMec = NMec ++;
        this.regDate = regDate;
    }
}

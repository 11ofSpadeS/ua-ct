package aula06;

import aula05.DateYMD;


public class Aluno extends Pessoa{

    private int defaultNMec = 100;
    private DateYMD regDate;
    private int NMec;

    public Aluno(String name, int cc, DateYMD birthDate , DateYMD regDate) {
        super(name, cc, birthDate);
        setNmec(defaultNMec);
        this.regDate = regDate;
    }

    public int getNMec(){
        return this.NMec;
    }

    public DateYMD getRegDate(){
        return this.regDate;
    }

    public void setRegDate(DateYMD regDate){
        this.regDate = regDate;
    }

    public void setNmec(int defaultNMec){
        this.NMec = defaultNMec + 1;
    }
    @Override
    public String toString() {
        return String.format("%s ; Data de Nascimento: %s: ; NMec: %d ; Data de inscrição: %s", getName() , getBirthdate() , this.NMec, this.regDate );
    }


}

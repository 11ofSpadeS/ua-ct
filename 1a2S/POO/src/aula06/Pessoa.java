package aula06;

import aula05.DateYMD;

import java.util.Date;

public class Pessoa {
    private String name;
    private int cc;
    private DateYMD birthDate;

    public Pessoa(String name, int cc, DateYMD birthDate) {
        this.name = name;
        this.cc = cc;
        this.birthDate = birthDate;
    }

    public String getName() {
        return this.name;
    }

    public int getCc() {
        return this.cc;
    }

    public DateYMD getBirthdate() {
        return birthDate;
    }

    @Override
    public String toString() {
        return String.format("%s; Nº ID Civil: %d; Data de nascimento: %s", this.name, this.cc, this.birthDate);
    }
}

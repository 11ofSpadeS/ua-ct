package aula06;

import aula05.DateYMD;

public class Professor extends Pessoa{

    private String cat;
    private String department;

    public Professor(String name, int cc, DateYMD birthDate , String cat , String department) {
        super(name, cc, birthDate);
        this.cat = cat;
        this.department = department;
    }

    public String getCat(){
        return this.cat;
    }

    public String getDepartment(){
        return this.department;
    }

    public void setCat(String cat){
        this.cat = cat;
    }

    public void setDepartment(String department){
        this.department = department;
    }

    @Override
    public String toString() {
        return String.format("%s; CC: %d ; Data de Nascimento: %s ; Categoria: %s; Departamento: %s", getName() , getCc() , getBirthdate() , this.cat, this.department);
    }
}

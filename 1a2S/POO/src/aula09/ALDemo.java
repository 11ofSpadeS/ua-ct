package aula09;

import aula05.DateYMD;
import aula06.Pessoa;

import java.util.*;

public class ALDemo {
    public static void main(String[] args) {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i+=10)
            c1.add(i);
        System.out.println("Size: " + c1.size());
        for (int i = 0; i < c1.size(); i++)
            System.out.println("Elemento: " + c1.get(i));
        ArrayList<String> c2 = new ArrayList<>();
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio");
        c2.remove(0);
        System.out.println(c2);

        Set<Pessoa> c3 = new HashSet<>();
        c3.add(new Pessoa("João" , 23223 , new DateYMD(11 , 1 , 2032)));
        c3.add(new Pessoa("Carlos" , 45337 , new DateYMD(23 ,3 ,1990)));
        c3.add(new Pessoa("Maria" , 23363 , new DateYMD(30 , 5 , 2005)));
        c3.add(new Pessoa("Ines" , 7689075 , new DateYMD(23 ,9 ,2002)));
        c3.add(new Pessoa("Antonio" , 9987669 , new DateYMD(1 , 2 , 2003)));

        System.out.println(c3);

        Set<Date> c4 = new TreeSet<>();
        c4.add(new Date(2008,3,23));
        c4.add(new Date(2022,8,29));
        c4.add(new Date(2042,12,11));
        c4.add(new Date(2008,1,30));
        c4.add(new Date(2022,6,1));

        System.out.println(c4);
    }
}

package aula04;
import java.util.Scanner;

public class tester {
    static boolean x = true;
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);

        do {
            System.out.println("Escolhe uma opçao: (S)air \n (C)irculo \n (T)riangulo \n (R)etangulo");
            String option = input.next();

            switch (option) {
                case "S" ->{x = false;}

                case "C" ->{
                    System.out.println("Raio do circulo?");
                    double radius = input.nextDouble();
                }
            }
        } while (x);
    }
}

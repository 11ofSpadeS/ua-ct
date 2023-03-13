package aula04;
import java.util.Scanner;

public class shapetester {
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

                case  "T" -> {
                    double side1 = -2;
                    double side2 = -2;
                    double side3 = -1;

                    do {
                        System.out.println("Lado 1 do triangulo1?");
                        side1 = input.nextDouble();
                    } while (side1 < 0);

                    do {
                        System.out.println("Lado 2 do triangulo1?");
                        side2 = input.nextDouble();
                    } while (side2 < 0);

                    do {
                        System.out.println("Lado 3 do triangulo1?");
                        side3 = input.nextDouble();
                    } while (side3 < 0);

                    Triangle t1 = new Triangle(side1 , side2 , side3);

                    do {
                        System.out.println("Lado 1 do triangulo2?");
                        side1 = input.nextDouble();
                    } while (side1 < 0);

                    do {
                        System.out.println("Lado 2 do triangulo2?");
                        side2 = input.nextDouble();
                    } while (side2 < 0);

                    do {
                        System.out.println("Lado 3 do triangulo2?");
                        side3 = input.nextDouble();
                    } while (side3 < 0);

                    Triangle t2 = new Triangle(side1 , side2 , side3);

                    System.out.println("Triangulo 1: " + t1);
                    System.out.println("Area do triangulo 1: " + t1.getArea());
                    System.out.println("Perimetro do triangulo 1: " + t1.getPerimeter());
                    System.out.println("Triangulo 2: " + t2);
                    System.out.println("Area do triangulo 2: " + t2.getArea());
                    System.out.println("Perimetro do triangulo 2: " + t2.getPerimeter());
                    System.out.println("Triangulo 1 e igual ao triangulo 2? " + t1.equals(t2) + "\n\n");
                }

                case "R" ->{

                }
            }
        } while (x);
    }
}

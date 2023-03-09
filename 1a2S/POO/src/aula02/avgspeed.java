package aula02;

import java.util.Scanner;

public class avgspeed {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        Double speed1;
        do {
            System.out.println("Velocidade no percurso 1?");
            speed1 = input.nextDouble();
        } while (speed1 < 0);

        Double distance1;
        do {
            System.out.println("Distancia do percurso 1?");
            distance1 = input.nextDouble();
        } while (distance1 < 0);

        Double time1 = distance1 / speed1;


        Double speed2;
        do {
            System.out.println("Velocidade no percurso 1?");
            speed2 = input.nextDouble();
        } while (speed2 < 0);

        Double distance2;
        do {
            System.out.println("Distancia do percurso 1?");
            distance2 = input.nextDouble();
        } while (distance2 < 0);

        Double time2 = distance2 / speed2;

        Double avgspeed = (distance1 + distance2) / (time2 + time1);

        System.out.printf("A velociade média de transporte do ponto A para o ponto B é de %,.2f Km/h", avgspeed);
    }
}
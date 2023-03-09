package aula02;

import java.util.Scanner;

public class pithagoras {
    public static void main(String[] args){

        Scanner input = new Scanner(System.in);

        Double catetoA;
        do {
            System.out.println("Comprimento do cateto A?");
            catetoA = input.nextDouble();
        }while (catetoA < 0);

        Double catetoB;
        do {
            System.out.println("Comprimento do cateto B?");
            catetoB = input.nextDouble();
        }while (catetoB < 0);

        Double hip = Math.sqrt(Math.pow(catetoA , 2) + Math.pow(catetoB , 2));

        Double angle = Math.toDegrees(Math.acos((catetoA/hip)));

        System.out.printf("A hipotenusa deste triangulo tem %.2f de comprimento e o angulo entre o lado A e a hipotenusa é de %.2f " , hip , angle);
    }
}

package aula02;

import java.util.Scanner;

public class kmtomiles{

    /* Milhas = Quilómetros / 1.609. */
    public static void main(String[] args){
        Scanner KmIn = new Scanner(System.in);
        System.out.println("Kilómetros?");

        Double km = KmIn.nextDouble();
        Double miles = km / 1.609;
        System.out.printf("%.2f Quilómetros equivale a %.2f Milhas " , km , miles);
    }
}
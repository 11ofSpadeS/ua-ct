package aula02;

import java.util.Scanner;

public class celsiustofarhenheit {

/* F = 1.8 ∗ C + 32. */
    public static void main(String[] args){
        Scanner CelsiusIn = new Scanner(System.in);
        System.out.println("Graus Celsius? ");

        Double celsius = CelsiusIn.nextDouble();
        Double fahrenheit =  1.8 * celsius + 32;
        System.out.printf("%.2f Graus Celsius %.2f Graus Fahrenheit " , celsius , fahrenheit);
    }
}

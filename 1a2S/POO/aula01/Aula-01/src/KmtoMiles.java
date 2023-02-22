import javax.sound.sampled.SourceDataLine;
import javax.swing.event.SwingPropertyChangeSupport;

import java.util.Scanner;

public class KmtoMiles {
    public static void main(String[] args){
        double km,miles;
        Scanner sc = new Scanner(System.in);
        System.out.print("Insira distancia em km: ");
        km = sc.nextDouble();
        miles = km / 1.609;
        System.out.println("A distancia em milhas é " + miles);
        sc.close();
    }
}

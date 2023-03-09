package aula02;

import java.util.Scanner;

public class secstoclock {

    public static  void main(String[] args){

        Scanner input = new Scanner(System.in);

        System.out.println("Tempo em segundos?");
        Integer secs = input.nextInt();

        Integer hours = 0;
        Integer seconds = secs % 60;
        Integer minutes = Math.floorDiv(secs , 60);
        if ( minutes >= 60 ){
            hours = Math.floorDiv(minutes , 60);
            minutes = minutes % 60;
        }
        System.out.printf("%d segundos equivalem a %dH: %dm: %ds" , secs , hours , minutes , seconds);
    }
}

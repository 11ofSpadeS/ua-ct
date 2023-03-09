package aula02;

import java.util.Scanner;

public class interestrate {

    public static void main(String[] args){
        Scanner Input = new Scanner(System.in);

        System.out.println("Investimento inicial?");
        Double investment = Input.nextDouble();

        Input.nextLine();
        System.out.println("Taxa de Juro?");
        String interestratestr = Input.nextLine();
        String newinterestrate = interestratestr.replace("%" , "");
        Float interestrate = Float.valueOf(newinterestrate) / 100;


        for (int i = 1; i < 4 ; i++){
            investment = investment + (investment*interestrate);

        }
        System.out.printf("Com uma taxa de juro de %s o valor ao final de 3 mese será de %,.3f €" , interestratestr , investment );
    }
}

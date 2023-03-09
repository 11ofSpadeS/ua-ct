package aula02;

import java.util.Scanner;

public class waterwarming {

    /* Q = M * (finalTemperature - initialTemperature) * 4184. */
    public static void main(String[] args){
        Scanner Input = new Scanner(System.in);

        System.out.println("Quantidade de água? ");
        Double watermass = Input.nextDouble();

        System.out.println("Temperatura inicial? ");
        Double initialtemp = Input.nextDouble();

        System.out.println("Temperatura final? ");
        Double finaltemp = Input.nextDouble();

        Double energy = watermass * (finaltemp - initialtemp) * 4184;

        System.out.printf("Serão necessários %,.3f Joules para que a água atinja a %,.2f ºC" , energy , finaltemp);
    }
}

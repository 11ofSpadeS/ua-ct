package aula03;

import java.security.KeyStore;
import java.util.Objects;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;
public class HighLow {
    public static void main(String args[]) {

        boolean again = true;
        Scanner input = new Scanner(System.in);
        String playagain;
        do {
            int secret = ThreadLocalRandom.current().nextInt(0, 101);
            int guess = -1;
            int counter = 0;
            do {
                System.out.println("Your guess?");
                guess = input.nextInt();
                counter += 1;
                if (guess < secret) {
                    System.out.println("Low");
                } else if (guess > secret) {
                    System.out.println("High");
                }
            } while (guess != secret);
            System.out.printf("Your guess was correct, the secret number was %d\n Number of tries: %d\n", secret, counter);
            System.out.println("Do you wish to continue? Type (S)im");
            playagain = input.next();
        } while (playagain != "S" || playagain != "Sim");
    }
}

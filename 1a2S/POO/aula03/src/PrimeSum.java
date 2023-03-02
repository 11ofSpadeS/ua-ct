import java.util.Scanner;

public class PrimeSum {

    static Boolean isprime(Integer n) {

        Boolean prime = Boolean.FALSE;
        for (int i = 2; i < n; i++) {
            if (n % i == 0) {
                return prime = Boolean.FALSE;
            } else {
                prime = Boolean.TRUE;
            }
        }
        if (prime == Boolean.TRUE) {
            System.out.printf("%d é um numero primo\n", n);
        }
        return prime;
    }


    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        Integer number = -1;
        Integer primesum = 0;

        do {
            System.out.println("Numero?\n");
            number = input.nextInt();
        } while (number <= 0);

        isprime(number);

        for (int i = 2; i <= number; i++) {
            boolean isPrime = true;

            // check if i is prime
            for (int j = 2; j <= Math.sqrt(i); j++) {
                if (i % j == 0) {
                    isPrime = false;
                    break;
                }
            }
            if (isPrime) {
                primesum += i;
            }
        }
        System.out.printf("A soma de todos os numeros primos ate %s é %d" , number , primesum);
    }
}
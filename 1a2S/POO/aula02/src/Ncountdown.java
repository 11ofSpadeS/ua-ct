import java.util.Scanner;

public class Ncountdown {
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);

        System.out.println("N?");
        Integer n = input.nextInt();

        for(int i = n ; i >= 0 ; i--){
            if(i%10 != 0) {
                System.out.printf(" %d," , i);
            }
            else {
                System.out.println(" " + i + "\n");
            }
            }
        }
    }


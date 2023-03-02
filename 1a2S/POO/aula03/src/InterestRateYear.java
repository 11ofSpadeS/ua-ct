import java.util.Scanner;

public class InterestRateYear {
    public static void main(String args[]){
        Scanner input = new Scanner(System.in);
        Float interestrate = (float) -0.3;

        do {
            System.out.println("Taxa de Juro?");
            String interestrateString = input.nextLine();
            String newinterestrate = interestrateString.replace("%", "");
            interestrate = Float.parseFloat(newinterestrate) / 100;
            System.out.println("input string: " + interestrateString);
            System.out.println("parsed value: " + interestrate);
        }   while ( interestrate <= 0 || interestrate > 0.05001 );
        Double investment = (double) 0;

        do {
            System.out.println("Investimento inicial?");
            investment = input.nextDouble();
        } while ( investment % 1000 != 0 || investment < 0 );

        for (int i = 1; i < 13 ; i++) {
            investment = investment + (investment * interestrate);
            System.out.printf("No %dº mes o valor do fundo de investimento é de %,.2f\n" , i , investment);
        }
    }
}

import java.util.Objects;
import java.util.Scanner;

public class firstequallast {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        Integer total = 0;

        System.out.println("Numero?");
        Double first = input.nextDouble();
        Double sum = first;
        Double max = first;
        Double min = first;

        Double userinput;
        do {
            userinput = input.nextDouble();

            sum += userinput;
            total++;
            if (userinput < min) {
                min = userinput;
            }
            if (userinput > max) {
                max = userinput;
            }
        } while (!Objects.equals(userinput, first));
        Double avg = sum / total;
        System.out.printf("O valor maximo foi %.2f , o valor minimo foi de %.2f , a média foi de %.2f o total de numeros foi de %d" , max , min , avg , total);
    }
}

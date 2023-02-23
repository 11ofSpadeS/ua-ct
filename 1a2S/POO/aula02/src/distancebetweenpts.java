import java.util.Scanner;

public class distancebetweenpts {

    public static void  main(String[] args){

        Scanner input = new Scanner(System.in);

        System.out.println("Abscissa (x) do ponto 1?");
        Double x1 = input.nextDouble();

        System.out.println("Ordenada (y) do ponto 1");
        Double y1 = input.nextDouble();


        System.out.println("Abscissa (x) do ponto 2?");
        Double x2 = input.nextDouble();

        System.out.println("Ordenada (y) do ponto 2");
        Double y2 = input.nextDouble();

        Double pointopointdistance = Math.sqrt((Math.pow((x2 - x1), 2) + (Math.pow((y2 - y1), 2))));

        System.out.printf("A distancia entre o ponto (%.2f , %.2f) e o ponto (%.2f , %.2f) é de %.2f" , x1 , y1 , x2 , y2 , pointopointdistance);
    }
}

import java.util.Arrays;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;


public class notasturma {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        System.out.println("Numero de alunos da turma:");
        Integer alunos = input.nextInt();

        float[][] grades = new float[alunos][2];
        System.out.println(Arrays.deepToString(grades));
        for (int i = 0; i < alunos ; i++) {
            Float notaP = ThreadLocalRandom.current().nextFloat(0, 21);
            Float notaT = ThreadLocalRandom.current().nextFloat(0, 21);
            grades[i][0] = notaP;
            grades[i][1] = notaT;
        }
        System.out.println(Arrays.deepToString(grades));
    }
}

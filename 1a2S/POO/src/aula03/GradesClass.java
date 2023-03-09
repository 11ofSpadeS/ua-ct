package aula03;

import java.util.Arrays;
import java.util.Scanner;
import java.util.Random;


public class GradesClass {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        Random random = new Random();
        System.out.println("Numero de alunos da turma:");
        Integer alunos = input.nextInt();

        float[][] grades = new float[alunos][2];
        for (int i = 0; i < alunos ; i++) {
            Float notaP = random.nextFloat(0, 20);
            Float notaT = random.nextFloat(0, 20);
            grades[i][0] = notaP;
            grades[i][1] = notaT;
        }
        
        System.out.println("NotaP    NotaT    Pauta");
        for (int i = 0; i < alunos; i++){
            System.out.printf("%5.2f %7.2f %7d\n" , grades[i][0] , grades[i][1] , (grades[i][1] < 7 || grades[i][0] < 7) ? 66 : Math.round(0.4 * grades[i][1] + 0.6 * grades[i][0]));
        }
    }
}

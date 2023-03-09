package aula03;

import java.util.Scanner;

public class Calendar {

    public static double getNumberBetween(Scanner sin, double min, double max) {
        double input;
        do {
            input = sin.nextDouble();
        } while (input > max || input < min);
        return input;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Insere o mes e o ano num formato mm/aaaa: ");
        String[] monthYear = scanner.next().split("/");
        int month = Integer.parseInt(monthYear[0]);
        int year = Integer.parseInt(monthYear[1]);

        System.out.print("Insere o dia da semana em que começa o mes (1 = Domingo, 7 = Sabado): ");
        int firstDay = (int)getNumberBetween(scanner, 1, 7);

        scanner.close();

        printCalendar(month, year, firstDay);
    }

    public static int monthDays(int month, int year) {
        int daysInMonth;
        switch (month) {
            case 2:
                if (year % 100 == 0 ? year % 400 == 0 : year % 4 == 0)
                    daysInMonth = 29;
                else
                    daysInMonth = 28;
                break;
            case 4:
            case 6:
            case 9:
            case 11:
                daysInMonth = 30;
                break;
            default:
                daysInMonth = 31;
        }
        return daysInMonth;
    }

    public static void printCalendar(int month, int year, int firstDay) {
        String[] monthNames = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        System.out.printf("\n%15s %d\n", monthNames[month-1], year);
        System.out.println("Sun Mon Tue Wed Thu Fri Sat");

        for (int i = 1; i < firstDay; i++)
            System.out.print("    ");

        int daysInMonth = monthDays(month, year);
        for (int day = 1; day <= daysInMonth; day++) {
            System.out.printf("%3d ", day);
            if ((day + firstDay - 1) % 7 == 0)
                System.out.println();
        }
    }
}

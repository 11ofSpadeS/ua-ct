package aula05;

import java.util.Scanner;

public class DateTester {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        DateYMD date = null;
        while (true) {
            System.out.println("Date operations:");
            System.out.println("1 - Create date");
            System.out.println("2 - Show current date");
            System.out.println("3 - Increment date");
            System.out.println("4 - Decrement date");
            System.out.println("0 - Exit");
            System.out.print("Option: ");
            int option = input.nextInt();
            if (option == 0)
                break;
            switch (option) {
                case 1:
                    System.out.print("Day: ");
                    int day = input.nextInt();
                    System.out.print("Month: ");
                    int month = input.nextInt();
                    System.out.print("Year: ");
                    int year = input.nextInt();
                    date = new DateYMD(year, month, day);
                    break;
                case 2:
                    if (date == null) {
                        System.out.println("Date not created");
                        break;
                    }
                    System.out.println("Current date: ");
                    date.printDate();
                    break;
                case 3:
                    if (date == null) {
                        System.out.println("Date not created");
                        break;
                    }
                    date.increment();
                    System.out.println("Date incremented by 1: ");
                    date.printDate();
                    break;
                case 4:
                    if (date == null) {
                        System.out.println("Date not created");
                        break;
                    }
                    date.decrement();
                    System.out.println("Date decremented by 1: ");
                    date.printDate();
                    break;
                default:
                    System.out.println("Invalid option");
            }
        }
    }
}

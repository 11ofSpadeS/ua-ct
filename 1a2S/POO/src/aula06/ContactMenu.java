package aula06;

import aula05.DateYMD;

import java.util.Scanner;

public class ContactMenu {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        while (true) {
            System.out.println("MENU:");
            System.out.println("1 - Add New Contact");
            System.out.println("2 - Change Contact");
            System.out.println("3 - Delete Contact");
            System.out.println("4 - Search Contact");
            System.out.println("5 - List Contacts");
            System.out.println("0 - Exit");
            System.out.print("Option: ");
            int option = input.nextInt();
            if (option == 0)
                break;
            switch (option) {
                case 1:
                    System.out.println("Insira o numero de telemovel:");
                    int cellnumber = input.nextInt();
                    System.out.println("Insira o email: ");
                    String email = input.next();
                    System.out.println("Insira o nome:");
                    String name = input.next();
                    break;
                case 2:

                    break;
                case 3:

                    break;
                case 4:

                    break;
                case 5:

                    break;
                default:
                    System.out.println("Invalid option");
            }
        }
    }
}

package aula06;

import aula05.DateYMD;

import java.util.Scanner;

public class ContactMenu {
    private static Contact[] contacts;
    private static Scanner input = new Scanner(System.in);
    public static void main(String[] args) {
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
                case 1 -> {
                    System.out.print("Insira o nome: ");
                    String name = input.nextLine();
                    System.out.print("Insira o cc: ");
                    String ccStr = input.nextLine();
                    int cc = Integer.parseInt(ccStr);
                    System.out.print("Insira a data de nascimento (formado: dd-mm-yyyy): ");
                    String date = input.nextLine();
                    String[] dateParts = date.split("-");
                    DateYMD birthDate = new DateYMD(Integer.parseInt(dateParts[0]), Integer.parseInt(dateParts[1]), Integer.parseInt(dateParts[2]));
                    System.out.print("Insira o email: ");
                    String mail = input.nextLine();
                    System.out.print("Insira o telefone: ");
                    int cellnumber = input.nextInt();
                    Pessoa person = new Pessoa(name, cc, birthDate);
                    Contact contact = new Contact(person, cellnumber, mail);

                    if (contacts == null) {
                        contacts = new Contact[1];
                        contacts[0] = contact;
                    }
                }
                case 2 -> {
                    System.out.print("Insira o nome, email ou telefone do contacto que pretende alterar: ");
                    String query = input.nextLine();
                    int[] indexes = searchContactsIndex(query);
                    System.out.printf("Contactos encontrados: %d%n", indexes.length);

                    if (indexes.length == 0) {
                        System.out.println("Não foram encontrados contactos com esse nome, email ou telefone");
                    } else if (indexes.length == 1) {
                        System.out.printf("Alterando contacto: %s%n", contacts[indexes[0]]);
                        System.out.print("Insira o novo telefone: ");
                        int phone = input.nextInt();
                        System.out.print("Insira o novo email: ");
                        String email = input.nextLine();
                        contacts[indexes[0]].setCellnumber(phone);
                        contacts[indexes[0]].setEmail(email);
                    } else {
                        Contact contact = selectContact(indexes);
                        System.out.printf("Alterando contacto: %s%n", contact);
                        System.out.print("Insira o novo telefone: ");
                        int phone = input.nextInt();
                        System.out.print("Insira o novo email: ");
                        String email = input.nextLine();
                        contact.setCellnumber(phone);
                        contact.setEmail(email);
                    }
                }


                case 3 -> {
                    System.out.print("Insira o nome, email ou telefone do contacto que pretende alterar: ");
                    String query = input.nextLine();
                    int[] indexes = searchContactsIndex(query);
                    System.out.printf("Contactos encontrados: %d%n", indexes.length);

                    if (indexes.length == 0) {
                        System.out.println("Não foram encontrados contactos com esse nome, email ou telefone");
                    } else if (indexes.length == 1) {
                        System.out.printf("Apagando contacto: %s%n", contacts[indexes[0]]);
                        Contact[] newContacts = new Contact[contacts.length - 1];
                        System.arraycopy(contacts, 0, newContacts, 0, indexes[0]);
                        System.arraycopy(contacts, indexes[0] + 1, newContacts, indexes[0], contacts.length - indexes[0] - 1);
                        contacts = newContacts;
                    } else {
                        Contact contact = selectContact(indexes);
                        System.out.printf("Apagando contacto: %s%n", contact);
                        Contact[] newContacts = new Contact[contacts.length - 1];
                        System.arraycopy(contacts, 0, newContacts, 0, contact.getId());
                        System.arraycopy(contacts, contact.getId() + 1, newContacts, contact.getId(), contacts.length - contact.getId() - 1);
                        contacts = newContacts;
                    }
                }
                case 4 -> {
                    System.out.print("Insira o nome, email ou telefone do contacto que pretende alterar: ");
                    String query = input.nextLine();
                    int[] indexes = searchContactsIndex(query);
                    System.out.printf("Contactos encontrados: %d%n", indexes.length);

                    if (indexes.length == 0) {
                        System.out.println("Não foram encontrados contactos com esse nome, email ou telefone");
                    } else if (indexes.length == 1) {
                        System.out.println(contacts[indexes[0]]);
                    } else {
                        for (int index : indexes)
                            System.out.printf("%s%n", contacts[index]);
                    }
                    System.out.println();
                }
                case 5 -> {
                    for (Contact contact : contacts)
                        System.out.printf("%s%n", contact);
                    System.out.println();
                }


                default -> {
                    System.out.println("Opção inválida!");
                }
            }
        }
    }
                    private static boolean checkIfContactExists(int cc) {
                    for (Contact c : contacts) {
                        if (c.getPerson().getCc() == cc) {
                            System.out.print("Já existe um contacto para essa pessoa, pretende criar um novo? (s/n): ");
                            String answer = input.nextLine();
                            return answer.equals("s");
                        }
                    }
                    return true;
                }

                private static int[] searchContactsIndex(String query) {
                    int[] indexes = new int[contacts.length];
                    int index = 0;
                    for (int i = 0; i < contacts.length; i++) {
                        if (contacts[i].getPerson().getName().contains(query) || contacts[i].getMail().contains(query) || contacts[i].getCellNumber().contains(query)) {
                            indexes[index] = i;
                            index++;
                        }
                    }
                    return indexes;
                }

                private static Contact selectContact(int[] indexes) {
                    System.out.println("Foram encontrados vários contactos com esse nome, email ou telefone, selecione um:");
                    for (int index : indexes)
                        System.out.printf("%s%n", contacts[index]);

                    Contact contact;
                    do {
                        System.out.print("Insira o ID do contacto que pretende alterar: ");
                        int index = input.nextInt();
                        contact = searchContactById(index);
                    } while (contact == null);

                    return contact;
                }

                private static Contact searchContactById(int id) {
                    for (Contact contact : contacts) {
                        if (contact.getId() == id) {
                            return contact;
                        }
                    }
                    return null;
                }
            }

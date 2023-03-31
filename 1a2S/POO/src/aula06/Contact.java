package aula06;

public class Contact {
    private int defaultID = 1;
    private int cellnumber;
    private Pessoa person;
    private String mail;
    private int ID;

    public Contact(Pessoa person, int cellnumber, String mail) {
        this.person = person;
        this.setCellnumber(cellnumber);
        this.setEmail(mail);
        setID(defaultID);
    }

    public void setCellnumber(int cellnumber) {
        if ((String.valueOf(cellnumber).length() == 9) && (Integer.toString(cellnumber)).charAt(0) == 9) {
            this.cellnumber = cellnumber;
        } else {
            this.cellnumber = 000000000;
        }
    }
    public int getCellNumber() {
        return cellnumber;
    }

    public void setEmail(String email) {
        if (!email.matches("^[a-zA-Z_0-9.]+@[a-zA-Z_0-9.]+\\.[a-zA-Z_0-9]+$"))
            throw new IllegalArgumentException("Invalid email");
        this.mail = email;
    }

    public void setID(int defaultID) {
        this.ID = defaultID + 1;
    }

    public int getId() {
        return ID;
    }
    public String getMail() {
        return mail;
    }
    public Pessoa getPerson() {
        return person;
    }

}
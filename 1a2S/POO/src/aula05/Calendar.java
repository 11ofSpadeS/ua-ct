package aula05;

public class Calendar {
    private int year;
    private int firstOfYear;
    private int[][] events;

    public Calendar( int year , int firstOfYear){
        this.year = year;
        this.firstOfYear = firstOfYear;
        this.events = new int[366][3];
    }

    public int getYear(){
        return this.year;
    }

    public int getFirstOfYear(){
        return this.firstOfYear;
    }

    public void printMonth(int month){
        String[] monthNames = {"Janeiro" , "Fevereiro" , "Março" , "Abril" , "Maio" , "Junho" , "Julho" , "Agosto" , "Setembro" , "Outubro" , "Novembro" , "Dezembro"};
        System.out.printf("\n%s %d" , monthNames[month-1] , year);
        System.out.println("Dom Seg Ter Qua Qui Sex Sab");
    }
}

package aula05;



public class DateYMD {

    private int year;
    private int month;
    private int day;



    public static boolean validMonth(int month) {

        if (month >= 1 && month <= 12) {
            return true;
        }
        else {
            return false;
        }
    }

    public static boolean leapYear(int year) {
        return year % 4 == 0 && year % 100 != 0 || year % 400 == 0;
    }

    public static int monthDays(int month, int year) {
        int days = 0;
        if (validMonth(month)) {
            if (month == 2) {
                if (leapYear(year)) {
                    days = 29;
                } else {
                    days = 28;
                }
            } else if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
                days = 31;
            } else {
                days = 30;
            }
        }
        return days;
    }

    public static boolean valid(int day, int month, int year ){
        if(!(validMonth(month))){
            return false;
        }
        else if (year < 0) {
            return false;
        }
        else if(day < 0 || day > monthDays(month , year) ){
            return false;
        }
        else{
            return true;
        }
    }


    public DateYMD(int day, int month, int year){
        if(valid(day , month, year)) {
            this.year = year;
            this.month = month;
            this.day = day;
        }
        else{
            System.out.println("A data inserida é invalida");
        }
    }

    public void printDate(){
        System.out.println(( this.year + "-" + this.month + "-" + this.day));
    }

    public int getDay() {
        return day;
    }

    public int getMonth() {
        return month;
    }

    public int getYear() {
        return year;
    }

    public void increment(){
        if(this.day < monthDays(this.month , this.year)){
            this.day ++;
        }
        else if (this.day == monthDays(this.month , this.year) || this.month == 12){
            this.day = 1;
            this.month = 1;
            this.year ++;
        }
        else{
            this.day = 1;
            this.month ++;
        }
    }

    public void decrement(){
        if(this.day > 1){
            this.day --;
        }
        else if (this.day == 1 || this.month == 1){
            this.day = 31;
            this.month = 12;
            this.year = this.year - 1;
        }
        else{
            this.day = monthDays((this.month - 1), this.year);
            this.month --;

        }
    }
    public void setDate(int year, int month, int day){
        if(valid(day , month, year)) {
            this.year = year;
            this.month = month;
            this.day = day;
        }
        else{
            System.out.println("A data inserida é invalida");
            }
        }

    public int[] get() {
        return new int[]{this.day, this.month, this.year};
    }

    @Override
    public String toString() {
        return String.format("%d/%d/%d" , getDay() , getMonth() ,getYear());
    }

}




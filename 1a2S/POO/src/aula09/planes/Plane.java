package aula09.planes;

public class Plane {
    private int defaultid = 100;
    private int id;
    private String maker;
    private String model;
    private int prodyear;
    private int passengers;
    private int maxspeed;
    private String planeType;

    public Plane( String maker , String model , int prodyear , int passengers , int maxspeed ){
        defaultid ++;
        this.id = defaultid;
        this.maker = maker;
        this.model = model;
        this.prodyear = prodyear;
        this.passengers = passengers;
        this.maxspeed = maxspeed;
        this.planeType = null;
    }

    public void setMaker(String maker){
        this.maker = maker;
    }

    public void setModel(String model){
        this.model = model;
    }

    public void setProdyear(int year){
        this.prodyear = year;
    }

    public void setPassengers(int passengers){
        this.passengers = passengers;
    }

    public void setMaxspeed(int maxspeed){
        this.maxspeed = maxspeed;
    }

    public int getId(){
        return this.id;
    }

    public String getMaker(){
        return this.maker;
    }

    public String getModel(){
        return this.model;
    }

    public int getProdyear(){
        return prodyear;
    }

    public int getPassengers(){
        return passengers;
    }

    public int getMaxspeed(){
        return maxspeed;
    }

    public String getPlaneType() {
        return this.planeType;
    }

    @Override
    public String toString(){
        return String.format("%s %s %d \n " +
                "Capacity:%d passengers \n " +
                "MaxSpeed:%d \n " +
                "ID:%d" , getMaker() , getModel() , getProdyear() ,getPassengers() , getMaxspeed() , getId());
    }
}

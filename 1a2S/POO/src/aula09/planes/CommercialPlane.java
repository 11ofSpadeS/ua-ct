package aula09.planes;

public class CommercialPlane extends Plane {
    private int crew;
    private String planeType;

    public CommercialPlane(String maker, String model, int prodyear, int passengers, int crew, int maxspeed) {
        super(maker, model, prodyear, passengers, maxspeed);
        this.crew = crew;
        this.planeType = "Commercial";
    }

    public void setCrew(int crew) {
        this.crew = crew;
    }


    public int getCrew() {
        return this.crew;
    }


    @Override
    public String toString() {
        return String.format("ID:%d\n" +
                "Plane type:\n %s \n " +
                "%s %s\n " +
                "Prod Year:%d \n " +
                "Capacity: %d passengers \n " +
                "          %d Crew \n " +
                "MaxSpeed: %d \n"
                , getId() , getPlaneType() , getMaker(), getModel(), getProdyear(), getPassengers(), getCrew(), getMaxspeed());
    }
}
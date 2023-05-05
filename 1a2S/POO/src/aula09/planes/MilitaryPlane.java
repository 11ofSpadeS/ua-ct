package aula09.planes;

public class MilitaryPlane extends Plane{
    private int ammo;
    private String planeType;
    public MilitaryPlane(String maker, String model, int prodyear, int passengers, int maxspeed , int ammo) {
        super(maker, model, prodyear, passengers, maxspeed);
        this.ammo = ammo;
        this.planeType = "Military";
    }

    public void setAmmo(int ammo){
        this.ammo = ammo;
    }

    public int getAmmo(){
        return ammo;
    }

    public String getPlaneType() {
        return this.planeType;
    }

    @Override
    public String toString() {
        return String.format("Plane type: %s\n" +
                "%s %s %d \n " +
                "Capacity:%d passengers \n " +
                "MaxSpeed:%d \n " +
                "Ammo capacity: %d \n" +
                "ID:%d", getPlaneType() , getMaker(), getModel(), getProdyear(), getPassengers(), getMaxspeed(), getAmmo() , getId());
    }
}

package aula09.planes;


import java.util.ArrayList;
import java.util.List;

public class PlaneTester {

    public static void main(String[] args) {
        PlaneManager fleet = new PlaneManager( new ArrayList<Plane>());

        fleet.addPlane(new CommercialPlane("Boeing", "737", 2005, 270, 10, 700));
        System.out.println( fleet.removePlane("10"));
        System.out.println( fleet.searchPlane("101"));
        System.out.println(fleet.getCommercialPlanes());
    }
}



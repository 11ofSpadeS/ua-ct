package aula09.planes;

import java.util.ArrayList;
import java.util.List;

public class PlaneManager {
    private int utilid;
    private Plane currentplane;
    List<Plane> fleet = new ArrayList<Plane>();

    public PlaneManager(ArrayList fleet) {
        this.fleet = fleet;
    }


    public void addPlane(Plane plane) {
        this.fleet.add(plane);
    }

    public String removePlane(String id) {
        utilid = Integer.valueOf(id);
        for (int i = 0; i < fleet.size(); i++) {
            currentplane = fleet.get(i);
            if (currentplane.getId() == utilid) {
                fleet.remove(currentplane);
                return String.format("Plane of ID: %s successfully removed from fleet ", id);
            }
        }
        return String.format("Plane of ID: %s could not be found", id);
    }

    public String searchPlane(String id) {
        utilid = Integer.valueOf(id);
        for (int i = 0; i < fleet.size(); i++) {
            currentplane = fleet.get(i);
            if (currentplane.getId() == utilid) {
                return fleet.get(i).toString();
            }
            }
        return null;
        }

    public String getCommercialPlanes(){
        List<Plane> commercials = new ArrayList<Plane>();
        for (int i = 0; i < fleet.size(); i++) {
            currentplane = fleet.get(i);
            if (currentplane.getPlaneType() == "Commercial"){
                commercials.add(currentplane);
            }
        }
        return commercials.toString();
    }
}

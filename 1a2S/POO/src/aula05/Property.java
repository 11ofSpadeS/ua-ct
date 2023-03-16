package aula05;

public class Property {
    private String location;
    private int rooms;
    private int startingprice;
    private int id;
    private boolean available;
    private DateYMD auctionBegin;
    private DateYMD auctionEnd;

    public Property(String location , int rooms ,  int startingprice , int id){
        this.location = location;
        this.rooms = rooms;
        this.startingprice = startingprice;
        this.id = id;
        this.available = true;
    }

    public int getId(){
        return this.id;
    }

    public int getRooms(){
        return this.rooms;
    }

    public int getPrice(){
        return this.startingprice;
    }

    public String getLocation(){
        return  this.location;
    }

    public boolean getAvailability(){
        return this.available;
    }

    public void setAvailability(boolean available){
        this.available = available;
    }

    public boolean isAuction(boolean auctionBegin , boolean auctionEnd){
        return (this.auctionBegin != null && this.auctionEnd != null);
    }

    public void setAuction(DateYMD begin, DateYMD end) {
        this.auctionBegin = begin;
        this.auctionEnd = end;
    }

}


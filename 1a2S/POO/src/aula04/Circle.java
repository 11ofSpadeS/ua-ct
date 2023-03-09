package aula04;

public class Circle{
    public double radius;

    public Circle(double radius) {
        if (radius < 0) {
            System.out.println("O raio deve ser superior a 0");
        } else {
            this.radius = radius;
        }
    }

    public double circleRadius(){
        return this.radius;
    }

    public void radiusSet(double radius){
        if (radius < 0) {
            System.out.println("O raio deve ser superior a 0");
        } else {
            this.radius = radius;
        }
    }

    public String toString(){
        return "Raio do circulo =" + this.radius;
    }

    public double getArea(){
        return Math.PI * Math.pow(this.radius , 2);
    }

    public double getPerimeter(){
        return Math.PI * this.radius;
    }
}



package aula04;

public class Rectangle {
    public double side1;
    public double side2;

    public Rectangle(double side1 , double side2){
        if( side1 < 0 && side2 < 0){
            System.out.println("O comprimento dos lados não pode ter valor negativo");
        }
        else{
            this.side1 = side1;
            this.side2 = side2;
        }
    }

    public double[] getsides() {
        return new double[]{this.side1, this.side2};
    }

    public void setSide(double side1, double side2, double side3) {
        if (side1 < 0 && side2 < 0 && side3 < 0) {
            System.out.println("Os lados têm que ter tamanhos positivos");
        }
        else {
            this.side1 = side1;
            this.side2 = side2;
        }
    }

    public boolean equals(Rectangle c2) {
        return this.side1 == c2.side1 && this.side2 == c2.side2;
    }

    public String toString() {
        return "Este rectangulo possui os seguinte lados: \n lado 1 " + side1 + "\nlado 2 " + side2;
    }

    public double getPerimeter() {
        return (2 * this.side1) + (2 * this.side2);
    }

    public double getArea() {
        return side1 * side2;
    }
}

package aula04;

public class Triangle {
    public double side1;
    public double side2;
    public double side3;

    public Triangle(double side1, double side2, double side3) {
        if (side1 < 0 && side2 < 0 && side3 < 0) {
            System.out.println("Os lados têm que ter tamanhos positivos");
        } else if (side1 + side2 < side3 && side1 + side3 < side2 && side2 + side3 < side1) {
            System.out.println("Estes lados não podem formar um triangulo");
        }
        else {
            this.side1 = side1;
            this.side2 = side2;
            this.side3 = side3;
        }
    }

    public double[] getsides() {
        return new double[]{this.side1, this.side2, this.side3};
    }

    public void setSide(double side1, double side2, double side3) {
        if (side1 < 0 && side2 < 0 && side3 < 0) {
            System.out.println("Os lados têm que ter tamanhos positivos");
        }
        if (side1 + side2 < side3 && side1 + side3 < side2 && side2 + side3 < side1) {
            System.out.println("Estes lados não podem formar um triangulo");
        }
        else {
            this.side1 = side1;
            this.side2 = side2;
            this.side3 = side3;
        }
    }

    public String toString() {
        return "Este triangulo possui os seguinte lados: \n lado 1 " + side1 + "\nlado 2 " + side2 + "\nlado 3 " + side3;
    }

    public double getPerimeter() {
        return this.side1 + this.side2 + this.side3;
    }

    public double getArea() {
        double p = this.getPerimeter() / 2;
        return Math.sqrt(p * (p - this.side1) * (p - this.side2) * (p - this.side3));
    }
}
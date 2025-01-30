1. stream task - Find unique car make

```java
public class UniqueCarMake {
   public static void main(String[] args) {
       List<Car> allCars = new LinkedList<>();

       allCars.add(new Car("Ford", "Escord", "123", "2012"));
       allCars.add(new Car("BMW", "3", "321", "2020"));
       allCars.add(new Car("Ford", "Fiesta", "145", "2009"));
       allCars.add(new Car("Mercedes", "AMG", "164", "2024"));

       // Find unique make

       uniqueCars.forEach(System.out::println);
   }
   static class Car {
       String make;
       String model;
       String vin;
       String year;

       public Car(String make, String model, String vin, String year) {
           this.make = make;
           this.model = model;
           this.vin = vin;
           this.year = year;
       }

       public String getMake() {
           return make;
       }

       public String getModel() {
           return model;
       }

       public String getVin() {
           return vin;
       }

       public String getYear() {
           return year;
       }

       @Override
       public String toString() {
           return "Car{" +
                   "make='" + make + '\'' +
                   ", model='" + model + '\'' +
                   ", vin='" + vin + '\'' +
                   ", year='" + year + '\'' +
                   '}';
       }
   }
}


```

You have List<Integer>. {ten elements} 5 even and 5 odds. 
var variable = list.stream().filter(p -> p % 2) ? what type will be in this variable?

---




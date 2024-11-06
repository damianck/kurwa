# sql 
1)
https://www.db-fiddle.com/f/cvFaNQc5axaBSogxCT9BDN/0
SQL task - we need to write query which shows us from all department which contains 2,3 employees

2)
Write a SQL query to find departments with less than five employees, including those with no employees. 
Display the department name along with the count of employees.

Table structure:
TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

# code review 
https://gist.github.com/orange-buffalo/f4cc37b3a0cc827ee46e5466aaf0e093

# java task - Find unique car make

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
}
# stream

You have List<Integer>. {ten elements} 5 even and 5 odds. 
var variable = list.stream().filter(p -> p % 2); 

what type will be in this variable??

# java task


import java.io.*;
import java.util.HashMap;

class MyCode {
  
  // Write a method for summing 2 numbers. Input and output as _strings_.
  // Example: "1" + "123" = "124"
  // Add internal cache for future execution
  // (once calculation done it will not be calculated another time).
  // No memory limit.
    static HashMap<String,String> cache = new ConcurentHashMap<>();
    // HashMap<String, String>
    
    
	public static void main (String[] args) {
      System.out.println(sumTwoNumbers("1", "123"));
      
      System.out.println(sumTwoNumbers("1", "123"));
      
      System.out.println(sumTwoNumbers("123", "1"));
      
	}

  static String sumTwoNumbers(String num1, String num2) {
   if (num1 != null && num2 != null && num1 != "" && num2 != "") {
     
     String resultFromCache = cache.get(num1 + "," + num2);
     if (resultFromCache == null) {

      String result = String.valueOf(Integer.parseInt(num1) + Integer.parseInt(num2));
      cache.put(num1 + "," + num2,result);
      return result;
        
     } else {
       System.out.println("result from cache");
       return resultFromCache;
     }
   } 
   return "";
  }
  /*
  final class Digit {
    final int num1;
    final int num2;
    
    // getter

    int hashCode() {
      return Objects.hash(num1, num2);

  }
  */
  }
  
# 
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    static String stringWithconsucativeEqualAdditionOFNumver(String inp) {
        String numbers = "1222463339";
        //
        //op 164699
        
        // 12224222 -> 1646
        StringBuilder st = new StringBuilder();
        
        for (int i = 0; i < numbers.length(); i++) {
            for (int j = i + 1; j < numbers.length() - 1; j++) {
               int sum = (int)numbers.charAt(i);
               if ((int)numbers.charAt(i)  == (int) numbers.charAt(j)) {
                   sum += numbers.charAt(j);
               } else {
                   
                   st.append(sum);
               }
            }
            
        }
         
        
        
        return st.toString(); 
    }

    public static void main(String[] args) {


        System.out.println("");
    }
}


/*3
WAP to input inches from the user and convert it into yards, feet. 
[Inch=inch*0.027 yards, inch=0.083 feet]
 */
 import java.util.Scanner;

 class pdf3{

     public static void main(String []a){

         System.out.println("enter the inches");
         Scanner s1=new Scanner(System.in);

         double d=s1.nextInt();

         double yards=d*0.027;
         System.out.println("yards : "+yards);
         double y=d/12;
         System.out.println("feet : "+y);


     }
 }
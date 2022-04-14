/* Ass2: WAP to input two numbers and perform swapping without temporary variable */
import java.util.Scanner;
class swapping{
    public static void main(String []args){

        System.out.println("enter the first number a");
        Scanner s1=new Scanner(System.in);

   System.out.println("enter the second number b");
        Scanner s2=new Scanner(System.in);
        int a,b;

        a=s1.nextInt();
         b=s2.nextInt();
         a=a+b;
         b=a-b;
         a=a-b;
           System.out.println("swaped number is a="+a+"    swaped number is a="+b);



    }

}

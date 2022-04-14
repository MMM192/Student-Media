/*5 WAP to input price and qty and calculate Bill Amount.*/

import java.util.Scanner;
class pdf5{
    public static void main(String []a){
System.out.println("enter the price of the product ");
Scanner s1=new Scanner(System.in);
int y=s1.nextInt();
System.out.println("enter the quantity ");
Scanner s2=new Scanner(System.in);
int x=s2.nextInt();
int bill=y*x;
System.out.println("your price is  "+bill);

    }
}

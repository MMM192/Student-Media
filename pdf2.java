/* WAP to input side of a square and calculate the area. [Area of square: side*side]*/

import java.util.Scanner;

class pdf2{
    public static void main(String []a){
        Scanner s1=new Scanner(System.in);
     
            int s,d,n;
            s=s1.nextInt();
           
            n=s*s;
            System.out.println("the area of square is" +n);
    }
}
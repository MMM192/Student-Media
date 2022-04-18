/*WAP to input width and height of a rectangle and calculate the area and perimeter. 
[Area of rectangle: width*height, Perimeter of rectangle: 2*width+2*height]
 */ 

import java.util.Scanner;
class pdf1{

    public static void main(String []args){
        Scanner width=new Scanner(System.in);
        Scanner height=new Scanner(System.in);
        int a,b;
        a=width.nextInt();
        b=height.nextInt();

int area=a*b;
System.out.println("area is "+area);
        int perimeter= 2*a+2*b;
        System.out.println("perimeter is "+perimeter);
    


    } 
}
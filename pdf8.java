/*WAP to Ask the user to enter the number for 5 times. Calculate the Addition of those numbers 
which are divisible by 3. and Display Factorial of those numbers which are divisible by 2. i.e even
*/

import java.util.Scanner;

import java.util.Arrays;
class pdf8{
        public static void main(String []a){

int number[]=new int[6];
int add[]=new int[6];
int add1[]=new int[6];
            for(int i=1;i<=5;i++){
                    System.out.println("enter the "+i+" number");
                    Scanner s1=new Scanner(System.in);
                    number[i]=s1.nextInt();
                
            }
            for(int i=1;i<=5;i++){
                    System.out.println("\n\n"+number[i]);
            }
            
             for(int i=1;i<=5;i++){
                    if(number[i]%3==0){
                       
                        add[0]=add[0]+number[i];
                         
                         }
                           
                         
                
            }
            System.out.println("\n\n the Addition of those numbers which are divisible by 3 is : "+add[0]);



            for(int j=1;j<=5;j++){
                    if(number[j]%2==0){
                        add1[j]=1;
                            for(int r=2;r<=number[j];r++){
                               add1[j]= add1[j]*r;
                               
                            }System.out.println("\n\n the Factorial of those numbers which are divisible by 2 is : "+number[j]+" "+add1[j]);
                            
                        
                         
                         }
                        
                           
                         
                
            } 
        }

}

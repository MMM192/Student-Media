/*WAP to input employee details as id, basic salary and calc the allowances of each of 5 employees 
as follow:
 1. if bsal>=15000 then da = 15% 
 2. if bsal>=10000 then hra = 7%
 3. if bsal<5000 then cca = 12%
 display gross salary of each employee*/

import java.util.Scanner;
import java.util.Arrays;
public class pdf10{
    public static void main(String []arg){
       int id[]=new int[10];
       int sal[]=new int[10];

       for(int i=1;i<6;i++){
           System.out.println("enter the emp "+i+" id : ");
           Scanner s1=new Scanner(System.in);
           id[i]=s1.nextInt();


            System.out.println("enter the emp "+i+" salary : ");
            Scanner s2=new Scanner(System.in);
            sal[i]=s2.nextInt();

       }
       int gross[]=new int[10];
              for(int i=1;i<6;i++){
                        if(sal[i]>=15000){

                         gross[i]=sal[i]/100*15;
                         gross[i]=sal[i]+gross[i];

                        }
                        else if(sal[i]>=10000){
                            gross[i]=sal[i]/100*7;
                            gross[i]=sal[i]+gross[i];
                        }
                        else if(sal[i]>=5000){
                            gross[i]=sal[i]/100*12;
                            gross[i]=sal[i]+gross[i];
                        }
                        else{

                        }

              }

              
                for(int i=1;i<6;i++){
                      System.out.println("the gross salary of emp id = "+id[i]+" is  :"+gross[i]);

                }
     
    }
     
}
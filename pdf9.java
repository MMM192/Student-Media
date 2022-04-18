/*Write a menu driven program to perform 1. Add Employee 2. Calculate Gross Salary 3. Display 
Details. In this program you should take 
a. DA = 15%, b. HRA = 16% c. CCA = 21%*/
import java.util.Scanner;
import java.util.Arrays;


public class pdf9{

public static void main(String []g){
 
  int gross1[]=new int[10];

int no[]=new int[10];
int pri[]=new int[10];
int da[]=new int[10];
int hra[]=new int[10];
int cca[]=new int[10];
String name[]=new String[10];
int i=0;


int choice;
        //Creating infinite while loop
        while(true) {
 
            //Creating menu
            System.out.println("Press 1 for Add Employee");
            System.out.println("Press 2 for Gross Salary");
            System.out.println("Press 3 for Display Details");
            System.out.println("Press 4 for exit");
      
 
            //Asking user to make choice
            System.out.println("Make your choice");
             Scanner choice1=new Scanner(System.in);
            choice = choice1.nextInt();
 
            //Creating switch case branch
            switch (choice) {
 
                //First case for finding the addition
                case 1:
                    System.out.println("add emp id ");
                    Scanner s1=new Scanner(System.in);
                            no[i]=s1.nextInt();
                           
                    
                    System.out.println("Enter the salary");
                    Scanner s2=new Scanner(System.in);
                            pri[i]=s1.nextInt();
                            

                    System.out.println("enter the name");
                    Scanner s3=new Scanner(System.in);
                    name[i]=s1.next();
                            i++;
                     break;
                    
                    
                    
                    
                    
                    case 2:
                    for(int u=0;u<i;u++){
                        da[u]=15*pri[u]/100;
                        hra[u]=16*pri[u]/100;
                        cca[u]=21*pri[u]/100;
                    gross1[u]=pri[u]+da[u]+hra[u]+cca[u];
                    }
                     break;
                    
                    case 3:
                    for(int u=0;u<i;u++){
                        System.out.println("\n name : "+name[u]+"\n id :"+no[u]+"\n Gross Salary : "+gross1[u]+"\n the orignsll salary : "+pri[u]+"\n\n");


                    }
                             break;
                            
                   
                   
               
                    case 4:
                    System.exit(0);

                default:
                    System.out.println("Invalid choice!!! Please make a valid choice. \\n\\n");
            
        }
    }


}

}
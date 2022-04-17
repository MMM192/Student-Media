/*
Write a menu driven program to perform 1. Add Book [Book No, Book Name, Book price],2. 
Display Book 3. Search Book 4. Exit.
*/


//Importing Saanner class
import java.util.Scanner;
import java.util.Arrays;
//Creating Class
public class pdf6 {
 
    //Creating main method
    public static void main(String[] args){
 
        //Declaring all variables
        int a,b,c;
        int k=0;
        
        int choice;
        String x[]=new String[10];
         
        int i=0;
      String no[]=new String[10];
       String pri[]=new String[10];
        String name[]=new String[10];
        String search;
       
      

        //Creating infinite while loop
        while(true) {
 
            //Creating menu
            System.out.println("Press 1 for add book");
            System.out.println("Press 2 for dispaly book");
            System.out.println("Press 3 for Search book");
            System.out.println("Press 4 for exit");
      
 
            //Asking user to make choice
            System.out.println("Make your choice");
             Scanner choice1=new Scanner(System.in);
            choice = choice1.nextInt();
 
            //Creating switch case branch
            switch (choice) {
 
                //First case for finding the addition
                case 1:
                    System.out.println("Enter the book no ");
                    Scanner s1=new Scanner(System.in);
                            no[i]=s1.next();
                           
                    
                    System.out.println("Enter the book name");
                    Scanner s2=new Scanner(System.in);
                            name[i]=s1.next();
                            

                    System.out.println("Enter the book price");
                    Scanner s3=new Scanner(System.in);
                    pri[i]=s1.next();
                            i++;
                   
                   
                    break;
 
                
                case 2:
                    
                    for(int t=0;t<i;t++){
                        System.out.println("\n book NO : "+no[t]+"\n book name : "+name[t]+"\n book price : "+pri[t]+"\n\n");
                    }
                    k=0;
                    
                    
                    break;


                    case 3:
                    
                    System.out.println("\n enter the book name to Search : ");
                    Scanner search1=new Scanner(System.in);
                    search=search1.next();
                        for(int y=0;y<i;y++){
                            if(search.equals(name[y])){
                                System.out.println("\n book NO : "+no[y]+"\n book name : "+name[y]+"\n book price : "+pri[y]+"\n\n");
                                k++;
                            }
                            
                        }
                        if(k==0){
                                System.out.println("\n book is not available");
                                  
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
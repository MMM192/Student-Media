import java.util.Scanner;
class upperLower1{
    public static void main(String []args){

        
        char g = args[0].charAt(0);
        int d=g;
         System.out.println(d);
      if(d>=65&&d<90){
          System.out.println("the character is upper case");
      }
      else if(d>=97&&d<122){
          System.out.println("the character is lower case");
      }
      else if(d>=33&&d<64){
          System.out.println("the character is symbol");
      }

      else{
          System.out.println("error");
      }

      
    }
}
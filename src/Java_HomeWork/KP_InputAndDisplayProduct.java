package Java_HomeWork;

import java.util.Scanner;

public class KP_InputAndDisplayProduct {

    public static void main(String [] args){

        int x, y, m;
        Scanner Num = new Scanner(System.in);
        System.out.println("Enter Number One:");
        x = Num.nextInt();

        System.out.println("Enter Number Two:");
        y = Num.nextInt();

        m = x * y;
        System.out.println("Answer is: " + m);

    }
}

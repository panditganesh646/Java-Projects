import java.util.Scanner;
public class no_of_stairs {
    public static int stairsNo(int n)
    {
           if(n<=1)
           {
              return n;
           }
           else
           {
              return stairsNo(n-1)+stairsNo(n-2);
           }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter nth term of stairs:");
        int n =sc.nextInt();
        int result = stairsNo(n+1);
        System.out.println("The no. of ways for stairs is:"+result);
    }

}

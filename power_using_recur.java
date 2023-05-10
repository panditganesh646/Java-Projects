import java.util.Scanner;
class power_using_recur{
    public static int findpower(int a,int b)
    {
        int mid,result = 0,fresult;
           if(b==1)
           {
              return a;
           }
           else
           {
               mid = b/2;
               result = findpower(a,mid);
               fresult = result*result;
                if(b%2==0)
                {
                    return fresult;
                }
                else
                {
                    return a*fresult;
                }
           }
           
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the number & its power..");
        int a = sc.nextInt();
        int b = sc.nextInt();
        long result = findpower(a,b);  
        System.out.println("a^b is: "+result);
    }
}
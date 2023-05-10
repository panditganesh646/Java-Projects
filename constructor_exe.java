class Demo1{
    int a,b;
    public Demo1(){
        System.out.println("Parent class Constructor");
    }
    public Demo1(int x,int y)
    {
        System.out.println("Parameterized Parent class Constructor");
        a = x;
        b = y;
    }
}
class Demo2 extends Demo1{
    int m,n;
    public Demo2()
    {
        System.out.println("Child class Constructor");
    }
    public Demo2(int x,int y)
    {
        System.out.println("Child class parameterized class constructor");
        m = x;
        n = y;
    }
}
public class constructor_exe {
    public static void main(String[] args) {
       Demo2 d = new Demo2();
       Demo2 d1 = new Demo2(10, 20);
    }
}

import java.util.Scanner;
class Guesser{
    int guessNum;
    public int guessNum()
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Hey guesser plzz guess the number:");
        guessNum = sc.nextInt();
        return guessNum;
    }
}
class Player
{
    int pguessNum;
    public int guessNum()
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Hey Player plzz guess the number:");
        pguessNum = sc.nextInt();
        return pguessNum;
    }
}
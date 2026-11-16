import java.util.Scanner;
import java.math.BigInteger;

class main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a number to calculate factorial:");
        int n = sc.nextInt();
        BigInteger factorial = new BigInteger("1");
        long start = System.nanoTime();
        for (int i = 1; i <= n; i++) {
            factorial = factorial.multiply(BigInteger.valueOf(i));
        }
        long end = System.nanoTime();
        System.out.println("The results of factorial: "+ factorial.toString());
        double durationInSeconds = (end - start) / 1_000_000_000.0;

        System.out.println("Elapsed time: " + durationInSeconds + " seconds");
    }
}

public class CpuBench {
  static long ITERATIONS = 50000000;
  public static void main(String[] argv)
  throws Exception
  {
      System.out.println("Start with the CpuBench-Test");
      long start = System.currentTimeMillis();
      for (int ii = 0 ; ii < ITERATIONS ; ii++)
      {
        String s = "this XXX a test".replaceAll("XXX", " is ");
      }
      long elapsed = System.currentTimeMillis() - start;
      System.out.println("elapsed time = " + elapsed + "ms");
      System.out.println((elapsed * 1000.0) / ITERATIONS + " microseconds per execution");
  }
}

public class Main {

  public static void main(String[] args) {
    System.out.println("hello world");
    System.out.println();
    printMemoryInfo();
  }

  public static void printMemoryInfo() {
      Runtime ri = Runtime.getRuntime();
      
      System.out.println("avaiable Processors: " + ri.availableProcessors());
      System.out.println("");
      System.out.println("freeMemory: " + format(ri.freeMemory()));
      System.out.println("totalMemory: " + format(ri.totalMemory()));
      System.out.println("maxMemory (-Xmx): " + format(ri.maxMemory()));
  }

  public static String format(long in) {
      return ""+(in/1024/1024);
  }
}

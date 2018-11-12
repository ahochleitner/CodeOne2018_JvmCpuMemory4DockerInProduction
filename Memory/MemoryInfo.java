public class MemoryInfo {    
  public static void main(String args[]) {
    System.out.println("Used Memory   :  " + format((Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory())) + " MB");
    System.out.println("Free Memory   : " + format(Runtime.getRuntime().freeMemory()) + " MB");
    System.out.println("Total Memory  : " + format(Runtime.getRuntime().totalMemory()) + " MB");
    System.out.println("Max Memory    : " + format(Runtime.getRuntime().maxMemory()) + " MB");            
  }

  public static String format(long in) {
      return ""+(in/1024/1024);
  }

}

// run with    java -Xms1025k -Xmx1025k -XshowSettings:vm  MemoryInfo

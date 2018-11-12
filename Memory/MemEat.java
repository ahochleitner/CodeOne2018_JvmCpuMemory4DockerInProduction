import java.util.ArrayList;
import java.util.List;

public class MemEat {
    public static void main(String[] args) {
        List l = new ArrayList<>();
	int i = 0;
        while (true) {
            byte b[] = new byte[1048576];  // 1024 * 1024 
            l.add(b);
            Runtime rt = Runtime.getRuntime();
            System.out.println( "free memory (" + (i++) + "/" + l.size() + "): " + rt.freeMemory() );
        }
    }
}

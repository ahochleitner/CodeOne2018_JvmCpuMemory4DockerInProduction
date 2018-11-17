import java.util.ArrayList;
import java.util.List;
import static java.lang.Math.*;

public class CpuBench2 {

public static void main(String[] args) throws Exception {
    class MyRunnable implements Runnable {
        @Override
        public void run() {
            for (int i=0; i<1_000_000; i++) {
                double d = tan(atan(tan(atan(tan(atan(tan(atan(tan(atan(123456789.123456789))))))))));
                cbrt(d);
            }
            System.out.println("I am " + Thread.currentThread().getName() + " , and I have finished");
        }
    }
    final int NUMBER_OF_THREADS = 32;
    List<Thread> threadList = new ArrayList<Thread>(NUMBER_OF_THREADS);
    for (int i=1; i<=NUMBER_OF_THREADS; i++) {
        Thread t = new Thread(new MyRunnable());
        if (i == NUMBER_OF_THREADS) {
            // Last thread gets MAX_PRIORITY
            t.setPriority(Thread.MAX_PRIORITY);
            t.setName("T-" + i + "-MAX_PRIORITY");
        } else {
            // All other threads get MIN_PRIORITY
            t.setPriority(Thread.MIN_PRIORITY);
            t.setName("T-" + i);
        }
        threadList.add(t);
    }

    threadList.forEach(t->t.start());
    for (Thread t : threadList) {
        t.join();
    }
}
}

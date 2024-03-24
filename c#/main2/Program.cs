using System;
using System.Diagnostics;
using System.IO;

class Program {
    static void Main() {
        Stopwatch stopwatch = Stopwatch.StartNew();

        for (int i = 0; i < 100000000; ++i) {
            Base obj = new Base();
        }

        stopwatch.Stop();

        using (StreamWriter writer = new StreamWriter("../output.txt", true))
        {
            writer.WriteLine(stopwatch.ElapsedMilliseconds);
        }
    }

    public class Base {}
}

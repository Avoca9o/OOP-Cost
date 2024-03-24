using System;
using System.Diagnostics;
using System.IO;

class Program {
    static void Main() {
        Base obj = new Derived();
        Stopwatch stopwatch = Stopwatch.StartNew();
        
        for (int i = 0; i < 100000000; ++i) {
            obj.DoSomething();
        }

        stopwatch.Stop();

        using (StreamWriter writer = new StreamWriter("../output.txt", true))
        {
            writer.WriteLine(stopwatch.ElapsedMilliseconds);
        }
    }

    public class Base {
        virtual public void DoSomething() {}
    }

    public class Derived : Base {
        public override void DoSomething() {}
    }
}

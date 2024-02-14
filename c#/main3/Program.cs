using System;

namespace Program
{
    class Program
    {
        static void Main(string[] args)
        {
            Base obj = new Derived();
            for (int i = 0; i < 1000000000; ++i) {
                obj.DoSomething();
            }
        }
    }

    public class Base {
        virtual public void DoSomething() {}
    }

    public class Derived : Base {
        public override void DoSomething() {}
    }
}
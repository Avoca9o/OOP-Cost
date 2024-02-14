using System;

namespace Program
{
    class Program
    {
        static void Main(string[] args)
        {
            for (int i = 0; i < 10000000; ++i) {
                Base obj = new Base();
            }
        }
    }

    public class Base {}
}
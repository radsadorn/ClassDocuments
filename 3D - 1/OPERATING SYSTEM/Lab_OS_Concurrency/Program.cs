using System;
using System.Threading;

namespace Lab_OS_Concurrency
{
    // Experiment #1
    class Program
    {
        static void TestThread1()
        {
            int i = 0;
            for (i = 0; i < 100000; ++i)
                Console.WriteLine("Thread# 1 i={0}", i);
        }
        static void TestThread2()
        {
            int i;
            for (i = 0; i < 100000; ++i)
                Console.WriteLine("Thread# 2 i={0}", i);
        }
        static void Main(string[] args)
        {
            Thread th1 = new Thread(TestThread1);
            Thread th2 = new Thread(TestThread2);
            th1.Start();
            th2.Start();
        }
    }

    // Experiment #2
    // class Program
    // {
    //     static int resource = 10000;
    //     static void TestThread1()
    //     {
    //         Console.WriteLine("Thread# 1 i={0}", resource);
    //     }
    //     static void TestThread2()
    //     {
    //         Console.WriteLine("Thread# 2 i={0}", resource);
    //     }

    //     static void Main(string[] args)
    //     {
    //         Thread th1 = new Thread(TestThread1);
    //         Thread th2 = new Thread(TestThread2);
    //         th1.Start();
    //         th2.Start();
    //     }
    // }

    // Experiment #3
    // class Program
    // {
    //     static int resource = 10000;
    //     static void TestThread1()
    //     {
    //         resource = 55555;
    //     }

    //     static void Main(string[] args)
    //     {
    //         Thread th1 = new Thread(TestThread1);
    //         th1.Start();
    //         Thread.Sleep(100);
    //         Console.WriteLine("resource={0}", resource);
    //     }
    // }

    // Experiment #3.1
    // class Program
    // {
    //     static int resource = 10000;
    //     static void TestThread1()
    //     {
    //         int i;
    //         for (i = 0; i < 45555; ++i) 
    //         {
    //             resource++;
    //             Console.Write(".");
    //         }
    //     }

    //     static void Main(string[] args)
    //     {
    //         Thread th1 = new Thread(TestThread1);
    //         th1.Start();
    //         Thread.Sleep(10);
    //         Console.WriteLine("Resource={0}", resource);
    //     }
    // }

    // Experiment #3.2
    // class Program
    // {
    //     static int resource = 10000;
    //     static void TestThread1()
    //     {
    //         int i;
    //         for (i = 0; i < 45555; ++i) 
    //         {
    //             resource++;
    //             Console.Write(".");
    //         }
    //     }

    //     static void Main(string[] args)
    //     {
    //         Thread th1 = new Thread(TestThread1);
    //         th1.Start();
    //         th1.Join();
    //         Console.WriteLine("Resource={0}", resource);
    //     }
    // }
}

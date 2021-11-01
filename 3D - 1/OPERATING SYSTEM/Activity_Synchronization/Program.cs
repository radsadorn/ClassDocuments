// Simple Thread
using System;
using System.Threading;
using System.Diagnostics;

namespace Synchro
{
    // 1. Discussion
        // class Program
        // {
        //     private static int sum = 0;
        //     static void plus()
        //     {
        //         int i;
        //         for (i = 0; i < 1000000001; i++)
        //         {
        //             sum += i;
        //         }
        //     }

        //     static void minus()
        //     {
        //         int i;
        //         for (i = 0; i < 1000000000; i++)
        //         {
        //             sum -= i;
        //         }
        //     }
        //     static void Main(string[] args)
        //     {
        //         Stopwatch sw = new Stopwatch();
        //         System.Console.WriteLine("Start...");
        //         sw.Start();
        //         plus();
        //         minus();
        //         sw.Stop();
        //         System.Console.WriteLine("sum = {0}", sum);
        //         System.Console.WriteLine("Time used: " + sw.ElapsedMilliseconds.ToString() + "ms");
        //     }
        // }
    

    // class Program
    // {
    //     private static int sum = 0;
    //     static void plus()
    //     {
    //         int i;
    //         for (i = 0; i < 1000000001; i++)
    //         {
    //             sum += i;
    //         }
    //     }

    //     static void minus()
    //     {
    //         int i;
    //         for (i = 0; i < 1000000000; i++)
    //         {
    //             sum -= i;
    //         }
    //     }
    //     static void Main(string[] args)
    //     {
    //         Thread P = new Thread(new ThreadStart(plus));
    //         Thread M = new Thread(new ThreadStart(minus));

    //         Stopwatch sw = new Stopwatch();
    //         System.Console.WriteLine("Start...");
    //         sw.Start();
    //         P.Start();
    //         M.Start();

    //         P.Join();
    //         M.Join();
    //         sw.Stop();
    //         System.Console.WriteLine("sum = {0}", sum);
    //         System.Console.WriteLine("Time used: " + sw.ElapsedMilliseconds.ToString() + "ms");
    //     }
    // }

        // class Program
        // {
        //     private static int sum = 0;
        //     private static object _Lock = new object();
        //     static void plus()
        //     {
        //         int i;
        //         for (i = 0; i < 1000001; i++)
        //             lock (_Lock)
        //             {
        //                 sum += i;
        //             }
        //     }

        //     static void minus()
        //     {
        //         int i;
        //         for (i = 0; i < 1000000; i++)
        //             //lock (_Lock)
        //             {
        //                 sum -= i;
        //             }
        //     }
        //     static void Main(string[] args)
        //     {
        //         Thread P = new Thread(new ThreadStart(plus));
        //         Thread M = new Thread(new ThreadStart(minus));

        //         Stopwatch sw = new Stopwatch();
        //         System.Console.WriteLine("Start...");
        //         sw.Start();
        //         P.Start();
        //         M.Start();

        //         P.Join();
        //         M.Join();
        //         sw.Stop();
        //         System.Console.WriteLine("sum = {0}", sum);
        //         System.Console.WriteLine("Time used: " + sw.ElapsedMilliseconds.ToString() + "ms");
        //     }
        // }
    

    // class Program
    // {
    //     private static int sum = 0;
    //     private static object _Lock = new object();
    //     static void plus()
    //     {
    //         int i;
    //         lock (_Lock)
    //         {
    //             for (i = 0; i < 1000000001; i++)

    //             {
    //                 sum += i;
    //             }
    //         }
    //     }

    //     static void minus()
    //     {
    //         int i;
    //         lock (_Lock)
    //         {
    //             for (i = 0; i < 100000000; i++)
    //             {
    //                 sum -= i;
    //             }
    //         }
    //     }
    //     static void Main(string[] args)
    //     {
    //         Thread P = new Thread(new ThreadStart(plus));
    //         Thread M = new Thread(new ThreadStart(minus));

    //         Stopwatch sw = new Stopwatch();
    //         System.Console.WriteLine("Start...");
    //         sw.Start();
    //         P.Start();
    //         M.Start();

    //         P.Join();
    //         M.Join();
    //         sw.Stop();
    //         System.Console.WriteLine("sum = {0}", sum);
    //         System.Console.WriteLine("Time used: " + sw.ElapsedMilliseconds.ToString() + "ms");
    //     }
    // }


    // 2. Modification
    // class Program
    // {
    //     private static string x ="";
    //     private static int exitflag = 0;
    //     private static object _Lock = new object();

    //     static void ThReadX() 
    //     {            
    //         while(exitflag == 0)
    //         {
    //             lock (_Lock)
    //             {
    //                 if (x == "")
    //                     Monitor.Pulse(_Lock);
    //                 else 
    //                 {
    //                     Console.WriteLine("X = {0}", x);
    //                     x = "";
    //                 }
    //             }

    //             // if (x != "")                             // Does not work!!
    //             // {
    //             //     Console.WriteLine("X = {0}", x);
    //             //     x = "";
    //             // }
    //         }
    //         Console.WriteLine("Thread 1 exit");
    //     }

    //     static void ThWriteX()
    //     {
    //         string xx;
    //         while (exitflag == 0)
    //         {
    //             lock (_Lock)
    //             {
    //                 Console.Write("Input: ");
    //                 xx = Console.ReadLine();
    //                 if (xx == "exit")
    //                     exitflag = 1;
    //                 else 
    //                     x = xx;
    //             }
    //         }
    //     }

    //     static void Main(string[] args) 
    //     {
    //         Thread A = new Thread(ThReadX);
    //         Thread B = new Thread(ThWriteX);

    //         B.Start();
    //         A.Start();
    //     }
    // }

    // 3. Modification

    class Program 
    {
        private static string x = "";
        private static int exitflag = 0;
        private static int updateFlag = 0;
        private static Object _Lock = new Object();

        static void ThReadX(Object i) 
        {
            while (exitflag == 0) 
            {
                lock (_Lock)
                {
                    if (x != "exit" && updateFlag == 1)
                    {
                        Console.WriteLine("***Thread {0} : x = {1}***", i, x);
                        updateFlag = 0;
                    }
                }
            }
            Console.WriteLine("---Thread {0} exit---", i);
        }

        static void ThWriteX() 
        {
            string xx;
            while (exitflag == 0) 
            {
                lock (_Lock)
                {
                    Console.Write("Input: ");
                    xx = Console.ReadLine();
                    if (xx == "exit")
                        exitflag = 1;
                    x = xx;
                    updateFlag = 1;
                }
            }
        }

        static void Main(string[] args) 
        {
            Thread A = new Thread(ThWriteX);
            Thread B = new Thread(ThReadX);
            Thread C = new Thread(ThReadX);
            Thread D = new Thread(ThReadX);

            A.Start();
            B.Start(1);
            C.Start(2);
            D.Start(3);
        }
    }
}
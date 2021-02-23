using Business.Concrete;
using DataAccess.Concrete.InMemory;
using System;

namespace ConsoleUI
{
    class Program
    {
        static void Main(string[] args)
        {
            //InMemoryCarTest();
            Console.WriteLine("Hello World!");
        }


        private static void InMemoryCarTest()
        {
            CarManager carManager = new CarManager(new InMemoryCarDal());
            foreach (var car in carManager.GetAllByModelYear(2019))
            {
                Console.WriteLine(car.Description + "\nGünlük Kirası: " + car.DailyPrice);
            }
        }
    }
}

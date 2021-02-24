using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrede.EntityFramework;
using Entities.Concrede;
using Entities.Concrete;
using Entities.Concrete.DTOs;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfCarDal : EfRepositoryBase<Car, CarRentalContext>, ICarDal
    {
        public List<CarDetailDto> GetCarDetails()
        {
            using (CarRentalContext context = new CarRentalContext())
            {
                var result = from car in context.Cars
                             join brand in context.Brands
                             on car.BrandId equals brand.Id
                             join color in context.Colors
                             on car.ColorId equals color.Id
                             select new CarDetailDto
                             {
                                 BrandName = brand.Name,
                                 ColorName = color.Name,
                                 DailyPrice = car.DailyPrice,
                                 CarDescription = car.Description
                             };
                return result.ToList();
            }
        }
    }
}

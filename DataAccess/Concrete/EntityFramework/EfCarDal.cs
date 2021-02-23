using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrede;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Concrede.EntityFramework
{
    public class EfCarDal:EfRepositoryBase<Car,CarRentalContext>,ICarDal
    {
    }
}

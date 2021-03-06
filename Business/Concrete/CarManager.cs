﻿using Business.Abstract;
using DataAccess.Abstract;
using Entities.Concrede;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CarManager : ICarService
    {
        ICarDal _carDal;

        public CarManager(ICarDal carDal)
        {
            _carDal = carDal;
        }

        public void Add(Car car)
        {
            if(car.Description.Length > 2 || car.DailyPrice >0)
            {
                _carDal.Add(car);
            }
            else
            {
                Console.WriteLine("En az 2 karakter olmalı veya Günlük Fiyatı 0 dan yüksek olmalıdır.");
            }
     
        }

        public void Delete(Car car)
        {
            _carDal.Delete(car);
        }

        public List<Car> GetAll()
        {
            return _carDal.GetAll();
        }

        public void Update(Car car)
        {
            _carDal.Update(car);
        }

        public List<Car> GetAllByModelYear(int year)
        {
            return _carDal.GetAll(c => c.ModelYear == year);
        }

        public List<Car> GetCarsByColorId(int id)
        {
            return _carDal.GetAll(c => c.ColorId == id);
        }

        public List<Car> GetCarsByBrandId(int id)
        {
            return _carDal.GetAll(c => c.BrandId == id);
        }

    }
}

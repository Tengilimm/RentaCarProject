﻿using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrede;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Concrede.EntityFramework
{
    public class EfColorDal:EfRepositoryBase<Color,CarRentalContext>,IColorDal
    {
    }
}

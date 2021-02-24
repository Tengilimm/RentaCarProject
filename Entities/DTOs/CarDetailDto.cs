using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete.DTOs
{
    public class CarDetailDto:IDto
    {
        public string BrandName { get; set; }
        public string CarDescription { get; set; }
        public string ColorName { get; set; }
        public int DailyPrice { get; set; }
    }
}

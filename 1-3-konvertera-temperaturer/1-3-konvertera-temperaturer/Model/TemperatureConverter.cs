using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1_3_konvertera_temperaturer.Model
{
    public static class TemperatureConverter
    {
        public static int CelsiusToFarenhiet(int c)
        {
            return (int)(c*1.8f + 32);
        }

        public static int FarenheitToCelsius(int f)
        {
            return (int)((f - 32)*5/9);
        }
    }
}
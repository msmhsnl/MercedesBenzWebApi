using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MercedesBenzWebApi.Models.DTO
{
    public class ProductModel
    {
        public string Model { get; set; }
        public string Name { get; set; }
        public string Slogan { get; set; }
        public bool? IsNew { get; set; }
        public bool? Discountable { get; set; }
        public string ImgSrc { get; set; }
    }
}
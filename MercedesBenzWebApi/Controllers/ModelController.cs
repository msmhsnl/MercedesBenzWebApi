using MercedesBenzWebApi.Models.DTO;
using MercedesBenzWebApi.Models.ORM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace MercedesBenzWebApi.Controllers
{
    public class ModelController : ApiController
    {
        MercedesBenzEntities db = new MercedesBenzEntities();

        

        public List<ProductModel> GetProductsByModel(string model)
        {
            if(model == "All"){
                List<ProductModel> ProductList = db.Products.Select(a => new ProductModel()
                {
                    Model = a.Model,
                    Name = a.Name,
                    Slogan = a.Slogan,
                    IsNew = a.IsNew,
                    Discountable = a.Discountable,
                    ImgSrc = a.ImgSrc
                }).ToList();

                return ProductList;
            }
            else
            {
                List<ProductModel> ProductList = db.Products.Where(a => a.Model == model)
                .Select(a => new ProductModel()
                {
                    Model = a.Model,
                    Name = a.Name,
                    Slogan = a.Slogan,
                    IsNew = a.IsNew,
                    Discountable = a.Discountable,
                    ImgSrc = a.ImgSrc
                }).ToList();

                return ProductList;
            }
            
        }
    }
}

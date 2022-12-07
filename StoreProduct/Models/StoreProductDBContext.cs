using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace StoreProduct.Models
{
    public class StoreProductDBContext : DbContext
    {
        public StoreProductDBContext() : base("name=ChuoiKN") { }
        public DbSet<Product> Products { get; set; }
    }
}
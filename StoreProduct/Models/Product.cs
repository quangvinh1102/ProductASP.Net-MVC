using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace StoreProduct.Models
{
    [Table("Products")]
    public class Product
    {
        [Key]
        public int Id { get; set; }
        public string name { get; set; }
        public string Description { get; set; }
        public int NumberInstock { get; set; }
        public string Category { get; set; }
    }
}
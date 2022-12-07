using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StoreProduct.Models;

namespace StoreProduct.Controllers
{
    public class TrangchuController : Controller
    {
        private StoreProductDBContext db = new StoreProductDBContext();
        // GET: Trangchu
        public ActionResult Index()
        {
            ViewBag.SoMauTin = db.Products.Count();
            return View();
        }
    }
} 
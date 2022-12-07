using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using StoreProduct.Models;

namespace StoreProduct.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        private StoreProductDBContext db = new StoreProductDBContext();

        // GET: Admin/Product
        public ActionResult Index()
        {
            return View(db.Products.ToList());
        }

        public ActionResult IndexAccessories()
        {
            var list = db.Products.Where(m => m.Category == "Accessories").ToList();
            return View("Index", list);
        }

        public ActionResult IndexIpIphone()
        {
            var list = db.Products.Where(m => m.Category == "IP Iphone").ToList();
            return View("Index", list);
        }
        public ActionResult IndexDesktop()
        {
            var list = db.Products.Where(m => m.Category == "Desktop").ToList();
            return View("Index", list);
        }

        public ActionResult IndexLaptop()
        {
            var list = db.Products.Where(m => m.Category == "Laptop").ToList();
            return View("Index", list);
        }

        public ActionResult IndexMonitor()
        {
            var list = db.Products.Where(m => m.Category == "Monitor").ToList();
            return View("Index", list);
        }
        public ActionResult IndexServer()
        {
            var list = db.Products.Where(m => m.Category == "Server").ToList();
            return View("Index", list);
        }
        // GET: Admin/Product/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Admin/Product/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Product/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "name,Description,NumberInstock,Category")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(product);
        }

        // GET: Admin/Product/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Admin/Product/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,name,Description,NumberInstock,Category")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(product);
        }

        // GET: Admin/Product/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Admin/Product/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

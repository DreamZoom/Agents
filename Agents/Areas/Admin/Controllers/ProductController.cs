using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Agents.Models;

namespace Agents.Areas.Admin.Controllers
{
    [Models.AdminFilter]
    public class ProductController : Controller
    {
        private db_AgentsEntities db = new db_AgentsEntities();

        //
        // GET: /Admin/Product/

        public ActionResult Index()
        {
            return View(db.Products.ToList());
        }

        //
        // GET: /Admin/Product/Details/5

        public ActionResult Details(string id = null)
        {
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return this.Error("未查找到数据");
            }
            return View(product);
        }

        //
        // GET: /Admin/Product/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Admin/Product/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Product product)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Products.Add(product);
                    db.SaveChanges();
                    return this.Success("添加成功");
                }

                return View(product);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/Product/Edit/5

        public ActionResult Edit(string id = null)
        {
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return this.Error("未查找到数据");
            }
            return View(product);
        }

        //
        // POST: /Admin/Product/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Product product)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Entry(product).State = EntityState.Modified;
                    db.SaveChanges();
                    return this.Success("编辑成功");
                }
                return View(product);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/Product/Delete/5

        public ActionResult Delete(string id = null)
        {
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return this.Error("未查找到数据");
            }
            return View(product);
        }

        //
        // POST: /Admin/Product/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            try
            {
                Product product = db.Products.Find(id);
                db.Products.Remove(product);
                db.SaveChanges();
                return this.Success("删除成功");
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //批量删除
        // POST: /Admin/Product/DeleteList/5
        public ActionResult DeleteList(string IDs)
        {
            List<Product> productList = new List<Product>();
            string[] idArray = IDs.Split(',');
            foreach (var id in idArray)
            {
                var item = db.Products.Find(id);
                if (item != null) productList.Add(item);
            }
            if (productList.Count <= 0)
            {
                return this.Error("未查找到数据");
            }
            return View(productList);
        }

        [HttpPost, ActionName("DeleteList")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteListConfirmed(string IDs)
        {

            try
            {
                int affect = db.Database.ExecuteSqlCommand(string.Format("delete from Product where ID in ({0})", IDs));
                if (affect > 0)
                {
                    return this.Success("批量删除成功");
                }
                else
                {
                    return this.Error("批量删除失败");
                }
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
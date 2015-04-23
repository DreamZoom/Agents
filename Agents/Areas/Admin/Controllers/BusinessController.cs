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
    public class BusinessController : Controller
    {
        private db_AgentsEntities db = new db_AgentsEntities();

        //
        // GET: /Admin/Business/

        public ActionResult Index()
        {
            return View(db.Businesses.ToList());
        }

        //
        // GET: /Admin/Business/Details/5

        public ActionResult Details(string id = null)
        {
            Business business = db.Businesses.Find(id);
            if (business == null)
            {
                return this.Error("未查找到数据");
            }
            return View(business);
        }

        //
        // GET: /Admin/Business/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Admin/Business/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Business business)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Businesses.Add(business);
                    db.SaveChanges();
                    return this.Success("添加成功");
                }

                return View(business);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/Business/Edit/5

        public ActionResult Edit(string id = null)
        {
            Business business = db.Businesses.Find(id);
            if (business == null)
            {
                return this.Error("未查找到数据");
            }
            return View(business);
        }

        //
        // POST: /Admin/Business/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Business business)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Entry(business).State = EntityState.Modified;
                    db.SaveChanges();
                    return this.Success("编辑成功");
                }
                return View(business);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/Business/Delete/5

        public ActionResult Delete(string id = null)
        {
            Business business = db.Businesses.Find(id);
            if (business == null)
            {
                return this.Error("未查找到数据");
            }
            return View(business);
        }

        //
        // POST: /Admin/Business/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            try
            {
                Business business = db.Businesses.Find(id);
                db.Businesses.Remove(business);
                db.SaveChanges();
                return this.Success("删除成功");
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //批量删除
        // POST: /Admin/Business/DeleteList/5
        public ActionResult DeleteList(string IDs)
        {
            List<Business> businessList = new List<Business>();
            string[] idArray = IDs.Split(',');
            foreach (var id in idArray)
            {
                var item = db.Businesses.Find(id);
                if (item != null) businessList.Add(item);
            }
            if (businessList.Count <= 0)
            {
                return this.Error("未查找到数据");
            }
            return View(businessList);
        }

        [HttpPost, ActionName("DeleteList")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteListConfirmed(string IDs)
        {

            try
            {
                int affect = db.Database.ExecuteSqlCommand(string.Format("delete from Business where ID in ({0})", IDs));
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
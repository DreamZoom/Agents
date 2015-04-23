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
    public class AdminController : Controller
    {
        private db_AgentsEntities db = new db_AgentsEntities();

        //
        // GET: /Admin/Admin/

        public ActionResult Index()
        {
            return View(db.Admins.ToList());
        }

        //
        // GET: /Admin/Admin/Details/5

        public ActionResult Details(string id = null)
        {
            Agents.Models.Admin admin = db.Admins.Find(id);
            if (admin == null)
            {
                return this.Error("未查找到数据");
            }
            return View(admin);
        }

        //
        // GET: /Admin/Admin/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Admin/Admin/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Agents.Models.Admin admin)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    admin.LastLoginTime = admin.AddTime = DateTime.Now;
                    db.Admins.Add(admin);
                    db.SaveChanges();
                    return this.Success("添加成功");
                }

                return View(admin);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/Admin/Edit/5

        public ActionResult Edit(string id = null)
        {
            Agents.Models.Admin admin = db.Admins.Find(id);
            if (admin == null)
            {
                return this.Error("未查找到数据");
            }
            return View(admin);
        }

        //
        // POST: /Admin/Admin/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Agents.Models.Admin admin)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Entry(admin).State = EntityState.Modified;
                    db.SaveChanges();
                    return this.Success("编辑成功");
                }
                return View(admin);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/Admin/Delete/5

        public ActionResult Delete(string id = null)
        {
            Agents.Models.Admin admin = db.Admins.Find(id);
            if (admin == null)
            {
                return this.Error("未查找到数据");
            }
            return View(admin);
        }

        //
        // POST: /Admin/Admin/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            try
            {
                Agents.Models.Admin admin = db.Admins.Find(id);
                db.Admins.Remove(admin);
                db.SaveChanges();
                return this.Success("删除成功");
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //批量删除
        // POST: /Admin/Admin/DeleteList/5
        public ActionResult DeleteList(string IDs)
        {
            List<Agents.Models.Admin> adminList = new List<Agents.Models.Admin>();
            string[] idArray = IDs.Split(',');
            foreach (var id in idArray)
            {
                var item = db.Admins.Find(id);
                if (item != null) adminList.Add(item);
            }
            if (adminList.Count <= 0)
            {
                return this.Error("未查找到数据");
            }
            return View(adminList);
        }

        [HttpPost, ActionName("DeleteList")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteListConfirmed(string IDs)
        {

            try
            {
                int affect = db.Database.ExecuteSqlCommand(string.Format("delete from Admin where ID in ({0})", IDs));
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
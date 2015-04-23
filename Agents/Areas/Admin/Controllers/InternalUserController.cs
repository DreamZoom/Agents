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
    public class InternalUserController : Controller
    {
        private db_AgentsEntities db = new db_AgentsEntities();

        //
        // GET: /Admin/InternalUser/

        public ActionResult Index()
        {
            return View(db.InternalUsers.ToList());
        }

        //
        // GET: /Admin/InternalUser/Details/5

        public ActionResult Details(string id = null)
        {
            InternalUser internaluser = db.InternalUsers.Find(id);
            if (internaluser == null)
            {
                return this.Error("未查找到数据");
            }
            return View(internaluser);
        }

        //
        // GET: /Admin/InternalUser/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Admin/InternalUser/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(InternalUser internaluser)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    internaluser.LastLoginTime = internaluser.AddTime = DateTime.Now;
                    db.InternalUsers.Add(internaluser);
                    db.SaveChanges();
                    return this.Success("添加成功");
                }

                return View(internaluser);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/InternalUser/Edit/5

        public ActionResult Edit(string id = null)
        {
            InternalUser internaluser = db.InternalUsers.Find(id);
            if (internaluser == null)
            {
                return this.Error("未查找到数据");
            }
            return View(internaluser);
        }

        //
        // POST: /Admin/InternalUser/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(InternalUser internaluser)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Entry(internaluser).State = EntityState.Modified;
                    db.SaveChanges();
                    return this.Success("编辑成功");
                }
                return View(internaluser);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/InternalUser/Delete/5

        public ActionResult Delete(string id = null)
        {
            InternalUser internaluser = db.InternalUsers.Find(id);
            if (internaluser == null)
            {
                return this.Error("未查找到数据");
            }
            return View(internaluser);
        }

        //
        // POST: /Admin/InternalUser/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            try
            {
                InternalUser internaluser = db.InternalUsers.Find(id);
                db.InternalUsers.Remove(internaluser);
                db.SaveChanges();
                return this.Success("删除成功");
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //批量删除
        // POST: /Admin/InternalUser/DeleteList/5
        public ActionResult DeleteList(string IDs)
        {
            List<InternalUser> internaluserList = new List<InternalUser>();
            string[] idArray = IDs.Split(',');
            foreach (var id in idArray)
            {
                var item = db.InternalUsers.Find(id);
                if (item != null) internaluserList.Add(item);
            }
            if (internaluserList.Count <= 0)
            {
                return this.Error("未查找到数据");
            }
            return View(internaluserList);
        }

        [HttpPost, ActionName("DeleteList")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteListConfirmed(string IDs)
        {

            try
            {
                int affect = db.Database.ExecuteSqlCommand(string.Format("delete from InternalUser where ID in ({0})", IDs));
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
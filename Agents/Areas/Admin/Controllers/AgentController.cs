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
    public class AgentController : Controller
    {
        private db_AgentsEntities db = new db_AgentsEntities();

        //
        // GET: /Admin/Agent/

        public ActionResult Index()
        {
            var agents = db.Agents.Include(a => a.Product);
            return View(agents.ToList());
        }

        //
        // GET: /Admin/Agent/Details/5

        public ActionResult Details(int id)
        {
            Agent agent = db.Agents.Find(id);
            if (agent == null)
            {
                return this.Error("未查找到数据");
            }
            return View(agent);
        }

        //
        // GET: /Admin/Agent/Create

        public ActionResult Create()
        {
            ViewBag.ProductName = new SelectList(db.Products, "ProductName", "ProductDiscription");
            return View();
        }

        //
        // POST: /Admin/Agent/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Agent agent,bool isAddBusiness=false)
        {
            try
            {
                if (isAddBusiness)
                {
                    Business business = new Business();

                    TryUpdateModel(business);
                    business.Emaill = "";
                    business.RegisterTime = DateTime.Now;
                    db.Businesses.Add(business);
                    agent.Bussiness = business.UserName;
                }
                
               
               // db.SaveChanges();
                if (ModelState.IsValid)
                {
                    agent = Models.AgentService.tryAgent(agent);
                    db.Agents.Add(agent);
                    db.SaveChanges();
                    return this.Success("添加成功");
                }
      
            }
            catch (Exception err)
            {
                //return this.Error(err.Message);
                ModelState.AddModelError("",err.Message);
            }
            ViewBag.ProductName = new SelectList(db.Products, "ProductName", "ProductDiscription", agent.ProductName);
            return View(agent);
        }

        //
        // GET: /Admin/Agent/Edit/5

        public ActionResult Edit(int id)
        {
            Agent agent = db.Agents.Find(id);
            if (agent == null)
            {
                return this.Error("未查找到数据");
            }
            ViewBag.ProductName = new SelectList(db.Products, "ProductName", "ProductDiscription", agent.ProductName);
            return View(agent);
        }

        //
        // POST: /Admin/Agent/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Agent agent)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    agent = Models.AgentService.tryAgent(agent);
                    db.Entry(agent).State = EntityState.Modified;
                    db.SaveChanges();
                    return this.Success("编辑成功");
                }
                ViewBag.ProductName = new SelectList(db.Products, "ProductName", "ProductDiscription", agent.ProductName);
                return View(agent);
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //
        // GET: /Admin/Agent/Delete/5

        public ActionResult Delete(int id )
        {
            Agent agent = db.Agents.Find(id);
            if (agent == null)
            {
                return this.Error("未查找到数据");
            }
            return View(agent);
        }

        //
        // POST: /Admin/Agent/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            try
            {
                Agent agent = db.Agents.Find(id);
                db.Agents.Remove(agent);
                db.SaveChanges();
                return this.Success("删除成功");
            }
            catch (Exception err)
            {
                return this.Error(err.Message);
            }

        }

        //批量删除
        // POST: /Admin/Agent/DeleteList/5
        public ActionResult DeleteList(string IDs)
        {
            List<Agent> agentList = new List<Agent>();
            string[] idArray = IDs.Split(',');
            foreach (var id in idArray)
            {
                var item = db.Agents.Find(int.Parse(id));
                if (item != null) agentList.Add(item);
            }
            if (agentList.Count <= 0)
            {
                return this.Error("未查找到数据");
            }
            return View(agentList);
        }

        [HttpPost, ActionName("DeleteList")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteListConfirmed(string IDs)
        {

            try
            {
                int affect = db.Database.ExecuteSqlCommand(string.Format("delete from Agent where ID in ({0})", IDs));
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
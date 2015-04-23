using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Agents.Controllers
{
    [Models.BusinessFilter]
    public class BusinessUserController : Controller
    {
        //
        // GET: /Business/
        Models.db_AgentsEntities db = new Models.db_AgentsEntities();
        public ActionResult Index()
        {
            var business = db.Businesses.Find(User.Identity.Name);
            ViewBag.Business = business;
            return View();
        }

        #region 代理申请
        /// <summary>
        /// 申请&升级
        /// </summary>
        /// <returns></returns>
        public ActionResult Applyfor()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Applyfor(Models.Agent model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    model.Bussiness = GetBusiness().UserName;
                    model= Models.AgentService.tryAgent(model);
                    db.Agents.Add(model);
                    db.SaveChanges();
                }
            }
            catch(Exception err)
            {
                ModelState.AddModelError("",err.Message);
            }

            return View(model);
        }
        #endregion


        /// <summary>
        /// 商家的代理申请申请
        /// </summary>
        /// <returns></returns>
        public ActionResult BusinessAgents()
        {
            var business = GetBusiness();
            return View(business.Agents);
        }

        public ActionResult AgentDetails(int agentid)
        {
           var model =  db.Agents.Find(agentid);
           return View(model);
        }


        public ActionResult BusinessAgentsOfChecked()
        {
            var business = GetBusiness();
            var list =  Models.AgentService.getCheckByBusiness(business.UserName);
            return View(list);
        }

        private Models.Business GetBusiness()
        {
            return db.Businesses.Find(User.Identity.Name);
        }

    }
}

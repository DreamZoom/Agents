using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Agents.Areas.Admin.Controllers
{
    public class ManageController : Controller
    {
        //
        // GET: /Admin/Manage/

        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(Models.Admin model,string ReturnUrl="")
        {
            Models.db_AgentsEntities db = new Models.db_AgentsEntities();

            var admin = db.Admins.Find(model.AdminName);

            if (ModelState.IsValid && admin !=null && admin.Password==model.Password)
            {
                //FormsAuthentication.SetAuthCookie(model.AdminName, RemeberMe);
                Session["Admin"] = admin;
                if (string.IsNullOrWhiteSpace(ReturnUrl))
                {
                    ReturnUrl = Url.Action("Index");
                }

                return Redirect(ReturnUrl);
            }

            return View(model);
        }

        public ActionResult LogOff()
        {
            //FormsAuthentication.SignOut();
            Session["Admin"] = null;
            return RedirectToAction("Login");
        }
    }
}

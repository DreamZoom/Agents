using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace Agents.Models
{
    /// <summary>
    /// 管理权限验证
    /// </summary>
    public class AdminFilter :AuthorizeAttribute
    {
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            //base.OnAuthorization(filterContext);
            var admin = filterContext.HttpContext.Session["Admin"] as Models.Admin;
            if (admin==null)
            {
                UrlHelper Url = new UrlHelper(filterContext.RequestContext);
                filterContext.Result = new RedirectResult(Url.Action("Login","Manage"));
            
            }
            
        }
    }
}
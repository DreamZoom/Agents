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
    public class BusinessFilter : AuthorizeAttribute
    {
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            //base.OnAuthorization(filterContext);
           
            if (!filterContext.HttpContext.Request.IsAuthenticated)
            {
                UrlHelper Url = new UrlHelper(filterContext.RequestContext);
                filterContext.Result = new RedirectResult(Url.Action("Login", "Account", new { returnUrl = filterContext.HttpContext.Request.Url }));
            
            }
            
        }
    }
}
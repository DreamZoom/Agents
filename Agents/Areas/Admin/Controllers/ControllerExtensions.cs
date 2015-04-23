using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Agents.Areas.Admin.Controllers
{
    public static class ControllerExtensions
    {
        public static ActionResult Success(this Controller controller, string message = "操作成功", string backurl = null)
        {
            var view = new ViewResult()
            {
                ViewName = "Success"
            };
            if (string.IsNullOrWhiteSpace(backurl))
            {
                view.ViewBag.backurl = controller.Url.Action("index");
            }
            else
            {
                view.ViewBag.backurl = backurl;
            }

            view.ViewBag.message = message;
            return view;
        }

        public static ActionResult Error(this Controller controller, string message = "操作失败", string backurl = null)
        {
            var view = new ViewResult()
            {
                ViewName = "Error"
            };
            if (string.IsNullOrWhiteSpace(backurl))
            {
                view.ViewBag.backurl = controller.Url.Action("index");
            }
            else
            {
                view.ViewBag.backurl = backurl;
            }
            view.ViewBag.message = message;
            return view;
        }
    }
}
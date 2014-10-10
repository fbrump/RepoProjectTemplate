using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoPadrao.UI.Web.Controllers
{
    public class HomeController : BaseControllers
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        
        public JsonResult getUser(int id) {
            var user = id;
            return Json(id);
        }

        public ActionResult Home() {
            return View();
        }
    }
}

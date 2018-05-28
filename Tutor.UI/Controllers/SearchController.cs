using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Tutor.UI.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        public ActionResult Tsearchresult()
        {
            return View();
        }
        public ActionResult Ssearchresult()
        {
            return View();
        }
    }
}
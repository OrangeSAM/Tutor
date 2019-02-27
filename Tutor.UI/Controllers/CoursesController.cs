using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using BLL;
using Tutor.UI.ViewModels;

namespace Tutor.UI.Controllers
{
    public class CoursesController : Controller
    {
        CoursesService courSer = new CoursesService();
        // GET: Courses
        public ActionResult Index()
        {
            var course = courSer.GetModels(b => b.Course_id != 0);
            CoursesVM coursesvm = new CoursesVM();
            coursesvm.courses = course;
            return View(coursesvm);
        }
    }
}
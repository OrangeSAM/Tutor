using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BLL;

namespace Tutor.UI.Controllers
{
    public class StudentController : Controller
    {
        StudentService studentSer = new StudentService();
        TaskService taskSer = new TaskService();
        CoursesService coursesSer = new CoursesService();
        // GET: Student
        public ActionResult Index()
        {
            var sid = (int)Session["user_id"];
            var stu = studentSer.GetModels(b => b.Student_id == sid).FirstOrDefault();
            return View(stu);
        }
    }
}
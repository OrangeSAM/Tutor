using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BLL;
using Tutor.UI.ViewModels;

namespace Tutor.UI.Controllers
{
    public class StudentController : Controller
    {
        StudentService studentSer = new StudentService();
        TaskService taskSer = new TaskService();
        IndentService indentSer = new IndentService();
        // GET: Student
        public ActionResult Index()
        {
            var sid = (int)Session["user_id"];
            var stu = studentSer.GetModels(b => b.Student_id == sid).FirstOrDefault();
            var task = taskSer.GetModels(b => b.Student_id == sid);
            var indent = indentSer.GetModels(b => b.Student_id == sid);
            SdetailVM sdetailvm = new SdetailVM();
            sdetailvm.student = stu;
            sdetailvm.task = task;
            sdetailvm.indent = indent;
            return View(sdetailvm);
        }
    }
}
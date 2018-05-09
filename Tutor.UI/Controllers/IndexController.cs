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
    public class IndexController : Controller
    {
        TeacherService teacherSer = new TeacherService();
        TeacherInfoService teacherinfoSer = new TeacherInfoService();
        TaskService taskSer = new TaskService();

        // GET: Index
        public ActionResult Index()
        {
            var teacher =teacherSer.GetModels(b => b.Teacher_id!=0);
            IndexVM indexvm = new ViewModels.IndexVM();
            indexvm.teacher = teacher;
            return View(indexvm);
        }
    }
}
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
        GradeService gradeSer = new GradeService();

        // GET: Index
        public ActionResult Index()
        {
            ////var grade =gradeSer.GetModels(b => b.Grade1!=);
            //IndexVM indexvm = new ViewModels.IndexVM();
            //indexvm.grade = grade;
            return View();
        }
    }
}
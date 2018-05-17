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
            var grades = gradeSer.GetModels(b => b.Grade_id !=0);
            var tasks = taskSer.GetAll().Take(5);
            IndexVM indexvm = new ViewModels.IndexVM();
            indexvm.grade = grades;
            indexvm.task = tasks;
            return View(indexvm);
        }
        //[HttpPost]
        //public ActionResult teacherlogin()
        //{
        //    try
        //    {
        //        teacherSer.Add()
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}
    }
}
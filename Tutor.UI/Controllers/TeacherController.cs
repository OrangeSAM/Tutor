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
    public class TeacherController : Controller
    {
        TeacherService teacherSer = new TeacherService();
        ExhibitionService exhibitionSer = new ExhibitionService();
        TeacherInfoService teacherinfoSer = new TeacherInfoService();
        // GET: Teacher
        public ActionResult Index()
        {
            //    var Tid =(int)Session["Tuser_id"];
            //    var teacher = teacherSer.getteacherbyid(Tid);
            //    TuserVM tuservm = new TuserVM();
            //    tuservm.teacher = teacher;
            return View();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using BLL;

namespace Tutor.UI.Controllers
{
    public class TeacherController : Controller
    {
        TeacherService teacherSer = new TeacherService();
        ExhibitionService exhibitionSer = new ExhibitionService();
        TeacherInfoService teacherinfoSer = new TeacherInfoService();
        // GET: Teacher
        public ActionResult Index(int? id)
        {
            var Tid = !id.HasValue? (int)Session["user_id"] : id.Value;
            var tea = teacherSer.getteacherbyid(Tid);
            //这里本可以查询teacherinfo然后利用导航属性，但这里涉及到不止两个表，所以恐怕不行。
            return View(tea);
        }
        public ActionResult teadetail(int id)
        {
            var tea = teacherSer.getteacherbyid(id);
            return View("Index",tea);
        }
    }
}
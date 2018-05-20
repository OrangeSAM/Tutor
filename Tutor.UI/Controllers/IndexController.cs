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
        SubjectService subjectSer = new SubjectService();
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
        [HttpPost]
        public ActionResult teacherlogin(Teacher T)
        {
            int u = teacherSer.login(T);
            if (u>0)
            {
                Session["Tuser_name"] = T.Tuser_name;
                Teacher teacher = teacherSer.GetModels(b => b.Tuser_name == Session["Tuser_name"].ToString()).FirstOrDefault();
                Session["Tuser_id"] = teacher.Teacher_id;
                return Content("<script>alert('登录成功！')");
            }
            else
            {
                return Content("<script>alert('用户名或密码错误！')");
            }
        }
        public ActionResult getsubject(int id)
        {
            
            var sub= subjectSer.getsubject(id);
            return Json(sub,JsonRequestBehavior.AllowGet);
        }
    }
}
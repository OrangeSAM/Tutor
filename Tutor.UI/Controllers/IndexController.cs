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
        StudentService studentSer = new StudentService();

        // GET: Index
        public ActionResult Index()
        {
            var grades = gradeSer.GetModels(b => b.Grade_id !=0);
            var tasks = taskSer.GetAll().Take(5);
            var kidtea = teacherinfoSer.getinfobygrade("小学");
            var pretea = teacherinfoSer.getinfobygrade("初中");
            var midtea = teacherinfoSer.getinfobygrade("学前");
            var higtea = teacherinfoSer.getinfobygrade("高中");
            IndexVM indexvm = new ViewModels.IndexVM();
            indexvm.grade = grades;
            indexvm.task = tasks;
            indexvm.pretea = pretea;
            indexvm.kidtea = kidtea;
            indexvm.midtea = midtea;
            indexvm.higtea = higtea;
            return View(indexvm);
        }
        [HttpPost]
        public ActionResult teacherlogin(Teacher T)
        {
            int u = teacherSer.login(T);
            if (u > 0)
            {
                Session["Tuser_name"] = T.Tuser_name;
                Session["name"] = T.Tuser_name;
                string name = Session["Tuser_name"].ToString();
                Teacher teacher = teacherSer.GetModels(b => b.Tuser_name == name).FirstOrDefault();
                Session["user_id"] = teacher.Teacher_id;
                var temp = (int)Session["user_id"];
                TeacherInfo teacherinfo = teacherinfoSer.GetModels(b => b.Teaher_id == temp).FirstOrDefault();
                Session["head"] = teacher.Tphoto;
                Session["tflag"] = teacherinfo.Major;
                return Redirect(Url.Action("index", "index"));
            }
            else
            {
                return Content("<script>alert('用户名或密码错误！');window.open('" + Url.Content("~/Index/Index") + "', '_self')</script>");
            }
        }
        public ActionResult studentlogin(Student T)
        {
            int u = studentSer.login(T);
            if (u > 0)
            {
                Session["Suser_name"] = T.Suser_name;
                Session["name"] = T.Suser_name;
                string name = Session["Suser_name"].ToString();
                Student student = studentSer.GetModels(b => b.Suser_name == name).FirstOrDefault();
                Session["user_id"] = student.Student_id;
                Session["suser_id"] = student.Student_id;
                Session["head"] = student.Sphoto;
                return Redirect(Url.Action("index", "index"));
            }
            else
            {
                return Content("<script>alert('用户名或密码错误！');window.open('" + Url.Content("~/Index/Index") + "', '_self')</script>");
            }
        }
        public ActionResult getsubject(int id)
        {
            
            var sub= subjectSer.getsubject(id);
            return Json(sub,JsonRequestBehavior.AllowGet);
        }
        public ActionResult signout()
        {
            Session["name"] = null;
            Session["user_id"] = null;
            Session["head"] = null;
            Session["tflag"] = null;
            return Content("<script>window.location.href=document.referrer</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BLL;
using Tutor.UI.ViewModels;
using Model;

namespace Tutor.UI.Controllers
{
    public class StudentController : Controller
    {
        StudentService studentSer = new StudentService();
        TaskService taskSer = new TaskService();
        IndentService indentSer = new IndentService();
        AppointmentService appoSer = new AppointmentService();
        TeacherInfoService teacSer = new TeacherInfoService();
        // GET: Student
        public ActionResult Index()
        {
            var sid = (int)Session["user_id"];
            var stu = studentSer.GetModels(b => b.Student_id == sid).FirstOrDefault();
            var task = taskSer.GetModels(b => b.Student_id == sid);
            var task_id = task.Select(b => b.Task_id);
            SdetailVM sdetailvm = new SdetailVM();
            List<TeacherInfo> tea = new List<TeacherInfo>();
            foreach (var item in task_id)
            {
                var appoinfo = appoSer.GetModels(b => b.Task_id == item);
                var teacher_id = appoinfo.Select(b => b.Teacher_id).FirstOrDefault();
                var info = teacSer.GetModels(b => b.Teaher_id==teacher_id).FirstOrDefault();
                
                tea.Add(info);
            }
            var indent = indentSer.GetModels(b => b.Student_id == sid);
            sdetailvm.student = stu;
            sdetailvm.task = task;
            sdetailvm.indent = indent;
            ViewBag.infodata = tea;
            return View(sdetailvm);
        }
    }
}
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
        TaskService taskSer = new TaskService();
        TeacherService teacherSer = new TeacherService();
        SampleService sampleSer = new SampleService();
        CommentService commentSer = new CommentService();
        ExhibitionService exhibitionSer = new ExhibitionService();
        TeacherInfoService teacherinfoSer = new TeacherInfoService();
        AppointmentService appointmentSer = new AppointmentService();
        // GET: Teacher
        public ActionResult Index(int? id)
        {
            var Tid = !id.HasValue? (int)Session["user_id"] : id.Value;
            var tea = teacherSer.getteacherbyid(Tid);
            //这里本可以查询teacherinfo然后利用导航属性，但这里涉及到不止两个表，所以恐怕不行。
            var task = taskSer.GetModels(b => b.Teacher_id == Tid).FirstOrDefault();
            var appo = appointmentSer.GetModels(b => b.Teacher_id == Tid).FirstOrDefault();
            TdeatilVM tdetail = new TdeatilVM();
            tdetail.tuser = tea;
            tdetail.task = task;
            tdetail.appointment = appo;
            return View(tdetail);
        }
        public ActionResult detail(int id)
        {
            var sample = sampleSer.GetModels(b => b.Teacher_id == id);
            var tea = teacherinfoSer.GetModels(b => b.Teaher_id == id).FirstOrDefault();
            var comt = commentSer.GetModels(b => b.Teacher_id == id);
            var exhi = exhibitionSer.GetModels(b => b.Teacher_id==id);
            Tshow tshow = new Tshow();
            tshow.sample = sample;
            tshow.teaccherinfo = tea;
            tshow.comment = comt;
            tshow.exhibition = exhi;
            return View(tea);
        }

    }
}
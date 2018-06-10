using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using BLL;
using Tutor.UI.ViewModels;
using PagedList;

namespace Tutor.UI.Controllers
{
    public class SearchController : Controller
    {
        GradeService gradeSer = new GradeService();
        TeacherInfoService teacherinfoSer = new TeacherInfoService();
        TaskService taskSer = new TaskService();
        // GET: Search
        public ActionResult Tsearchresult(int page = 1)
        {
            var grade = gradeSer.GetModels(b => b.Grade_id != 0);
            var reminder = teacherinfoSer.GetModels(b => b.Detail_id != 0).Count()%10;
            var count = teacherinfoSer.GetModels(b => b.Detail_id != 0).Count() / 10;
            if (reminder > 0)
            {
                 count =count+1;
            }
            var teacherinfo = teacherinfoSer.GetModelsBypage(10, page, true,b=>b.Detail_id,b => b.Detail_id != 0);
            TsearchVM tsearchvm = new ViewModels.TsearchVM();
            tsearchvm.grade = grade;
            tsearchvm.teacherinfo = teacherinfo;
            var area =teacherinfo.Select(b => b.Area).Distinct();
            ViewBag.count = count;
            tsearchvm.area = area;
            return View(tsearchvm);
        }
        public ActionResult Ssearchresult(int page=1)
        {
            var grade = gradeSer.GetModels(b => b.Grade_id != 0);
            var reminder = taskSer.GetModels(b => b.Task_id != 0).Count()%10;
            var count = taskSer.GetModels(b => b.Task_id != 0).Count()/10;
            if (reminder > 0)
            {
                count = count + 1;
            }
            var task = taskSer.GetModelsBypage(10,page,true,b=>b.Task_id,b => b.Task_id != 0);
            SsearchVM ssearchvm = new ViewModels.SsearchVM();
            var area = task.Select(b => b.Location).Distinct();
            ssearchvm.area = area;
            ssearchvm.task = task;
            ssearchvm.grade = grade;
            return View(ssearchvm);
        }
        public ActionResult filter(string sub, string area, string sex,int page=1)
        {
            var grade = gradeSer.GetModels(b => b.Grade_id != 0);
            var teacherinfo = teacherinfoSer.GetModelsBypage(10, page, true,b=>b.Detail_id,b => b.Detail_id != 0);
            var filter = teacherinfo.Where(t => t.Available_subject.Contains(sub));
            var filters = filter.Where(t => t.Area.Contains(area));
            var remind = filters.Count() % 10;
            var count = filters.Count() / 10;
            var location = filters.Select(b => b.Area).Distinct();
            if (remind > 0)
            {
                count = count + 1;
            }
            TsearchVM tsearchvm = new TsearchVM();
            tsearchvm.teacherinfo = filters;
            tsearchvm.grade = grade;
            tsearchvm.area = location;
            ViewBag.count = count;
            return View(tsearchvm);
            
        }
        
    }
}
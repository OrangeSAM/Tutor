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
        public ActionResult Ssearchresult()
        {
            return View();
        }
    }
}
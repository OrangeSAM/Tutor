﻿using System;
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
        AppointmentService appoSer = new AppointmentService();
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
            var area = teacherinfo.Select(b => b.Area).Distinct();
            tsearchvm.grade = grade;
            tsearchvm.teacherinfo = teacherinfo;
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
            ViewBag.count = count;
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
        public String makeorder(appointment appointment)
        {
            AppointmentService appointmentSer = new AppointmentService();
            var taskid = appointment.Task_id;
            var teacid = appointment.Teacher_id;
            var temp = appointmentSer.GetModels(b => b.Task_id == taskid).FirstOrDefault();
            if (temp == null)
            {
                appointmentSer.Add(appointment);
                var u = appointment.Task_id;
                taskSer.updateappo(u);
                return "预约成功";
            }
            else //if (temp.Teacher_id == teacid)
            {
                return "请勿重复预约";
            }
            //还有个null怎么判断
            //if (temp.Teacher_id == teacid)
            //{
            //    return "请勿重复预约";
            //}
        }
        public ActionResult searchredir(string subject)
        {
            var temp = teacherinfoSer.GetModels(b => b.Detail_id != 0);
            var info = temp.Where(t => t.Available_subject.Contains(subject));
            var grade = gradeSer.GetModels(b => b.Grade_id != 0);
            var location = temp.Select(t => t.Area).Distinct();
            TsearchVM tsearchvm = new TsearchVM();
            tsearchvm.teacherinfo = info;
            tsearchvm.grade = grade;
            tsearchvm.area = location;
            return View("Tsearchresult",tsearchvm);
        }
    }
}
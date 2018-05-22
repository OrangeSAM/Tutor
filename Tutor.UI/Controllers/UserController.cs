using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BLL;
using System.Data.Entity.SqlServer;

namespace Tutor.UI.Controllers
{
    public class UserController : Controller
    {
        TeacherService teacherSer = new TeacherService();

        [HttpPost]
        public ActionResult login(Teacher T)
        {
            int u = teacherSer.login(T);
            if (u > 0)
            {
                Session["Tuser_name"] = T.Tuser_name;
                string name= Session["Tuser_name"].ToString();
                Teacher teacher = teacherSer.GetModels(b => b.Tuser_name == name).FirstOrDefault();
                Session["Tuser_id"] = teacher.Teacher_id;
                return Redirect(Url.Action("index","index"));
                //Content("<script>alert('用户名或密码错误！')");
            }
            else
            {
                return Content("<script>alert('用户名或密码错误！')");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using BLL;
using IBLL;

namespace Tutor.UI.Controllers
{
    public class AccountController : Controller
    {
        private IStudentService StudentService = BLLContainer.Container.Resolve<IStudentService>();
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(Student student)
        {
            try
            {
                StudentService.Add(student);
                return Content("<script>alert('注册成功！');window.open('" + Url.Content("~/Index/Index") + "', '_self')</script>");

            }
            catch (Exception)
            {

                throw;
            }
        }
        //public ActionResult updatephoto()
        //{
        //    var u = StudentService.GetModels(b => b.Student_id == int.Parse(Session["Suser_id"].ToString())).FirstOrDefault();
        //    try
        //    {
        //        HttpPostedFileBase postimage = Request.Files["photo"];
        //        string img = postimage.FileName.ToString();
        //        if (img == "")
        //        {
        //            return Content("<script>;alert('请输入图片');history.go(-1)</script>");
        //        }
        //        else
        //        {
        //            string filepath = postimage.FileName;
        //            string filename = filepath.Substring(filepath.LastIndexOf("\\") + 1);
        //            string serverpath = Server.MapPath(@"\Img\user\") + filename;
        //            string relativepath = @"/Img/user/" + filename;
        //            postimage.SaveAs(serverpath);
        //            u.Sphoto = relativepath;
        //            StudentService.Update(u);
        //        }
        //    }
        //    catch (Exception error)
        //    {

        //        throw error;
        //    }
        //}
    }
}
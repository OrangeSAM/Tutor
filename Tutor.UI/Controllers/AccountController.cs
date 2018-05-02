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
                return Content("注册成功");
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
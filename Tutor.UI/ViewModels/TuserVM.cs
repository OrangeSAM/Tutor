using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;

namespace Tutor.UI.ViewModels
{
    public class TuserVM
    {
        public TeacherInfo teacherinfo
        {
            get;set;
        }
        public Exhibition exhibition
        {
            get; set;
        }
        public Teacher teacher
        {
            get;set;
        }
    }
}
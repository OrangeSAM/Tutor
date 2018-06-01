using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;

namespace Tutor.UI.ViewModels
{
    public class TsearchVM
    {
        public IEnumerable<grade> grade
        {
            get;set;
        }
        public IEnumerable<TeacherInfo> teacherinfo
        {
            get;set;
        }
        public IEnumerable<string> area
        {
            get;set;
        }
    }
}
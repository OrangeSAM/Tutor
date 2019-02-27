using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;

namespace Tutor.UI.ViewModels
{
    public class CoursesVM
    {

        public IEnumerable<courses> courses
        {
            get;set;
        }
    }
}
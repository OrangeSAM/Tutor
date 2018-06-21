using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;

namespace Tutor.UI.ViewModels
{
    public class SdetailVM
    {
        public Student student
        {
            get;set;
        }
        public IEnumerable<Task> task
        {
            get;set;
        }
        public IEnumerable<indent> indent
        {
            get;set;
        }
    }
}
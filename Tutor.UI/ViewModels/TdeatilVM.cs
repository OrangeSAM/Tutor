using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;

namespace Tutor.UI.ViewModels
{
    public class TdeatilVM
    {
        public Tuser tuser
        {
            get;set;
        }
        public IEnumerable<Task> task
        {
            get;set;
        }
        public IEnumerable<appointment> appointment
        {
            get;set;
        }
    }
}
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
        public Task task
        {
            get;set;
        }
        public appointment appointment
        {
            get;set;
        }
    }
}
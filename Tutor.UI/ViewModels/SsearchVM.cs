using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;

namespace Tutor.UI.ViewModels
{
    public class SsearchVM
    {
        public IEnumerable<string> area
        {
            get;set;
        }
        public IEnumerable<Task> task
        {
            get;set;
        }
        public IEnumerable<grade> grade
        {
            get; set;
        }
    }
}
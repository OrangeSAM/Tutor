using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;

namespace Tutor.UI.ViewModels
{
    public class Tshow
    {
        public TeacherInfo teaccherinfo
        {
            get;set;
        }
        public IEnumerable<Comment> comment
        {
            get;set;
        }
        public IEnumerable<Exhibition> exhibition
        {
            get;set;
        }
        public IEnumerable<Sample> sample
        {
            get;set;
        }
    }
}
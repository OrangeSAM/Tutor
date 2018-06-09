using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;

namespace Tutor.UI.ViewModels
{
    public class IndexVM
    {
        public IEnumerable<grade> grade
        {
            get; set;
        }
        public IEnumerable<subject> subject
        {
            get; set;
        }
        public Teacher teacher
        {
            get; set;
        }
        public IEnumerable<TeacherInfo> teacherinfo
        {
            get; set;
        }
        public IEnumerable<Task> task
        {
            get;set;
        }
        public IEnumerable<TeacherInfo> kidtea
        {
            get;set;
        }
        public IEnumerable<TeacherInfo> pretea
        {
            get;set;
        }
        public IEnumerable<TeacherInfo> midtea
        {
            get;set;
        }
        public IEnumerable<TeacherInfo> higtea
        {
            get;set;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace DAL
{
    public partial class TeacherInfoDAL : BaseDAL<TeacherInfo>, ITeacherInfoDAL
    {
        TutorEntities db = new TutorEntities();
        public IEnumerable<TeacherInfo> getinfobygrade(string grade)
        {
            var t = (from u in db.TeacherInfo
                    orderby Guid.NewGuid()
                    where u.Available_subject.Contains(grade)
                    select u).Take(4);
            return t;
        }
    }
}

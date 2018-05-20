using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace DAL
{
    public partial class SubjectDAL : BaseDAL<subject>, ISubjectDAL
    {
        TutorEntities db = new TutorEntities();
        public IEnumerable<subject> getsubject(int grade_id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            var data = from p in db.subject
                       where p.Grade_id == grade_id
                       select p;
            return data;
        }
    }
}

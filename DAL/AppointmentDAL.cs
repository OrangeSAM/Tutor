using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace DAL
{
    public partial class AppointmentDAL : BaseDAL<appointment>, IAppiontmentDAL
    {
        TutorEntities db = new TutorEntities();
        public int appocount()
        {
            var t = from u in db.appointment
                    select u.Task_id;
            int result = t.Count();
            return result;
        }
    }
}

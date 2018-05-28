using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace DAL
{
    public partial class TeacherDAL:BaseDAL<Teacher>,ITeacherDAL
    {
        TutorEntities db = new TutorEntities();
        public int login(Teacher T)
        {
            
            var t = from u in db.Teacher
                    where u.Tuser_name == T.Tuser_name && u.Tpwd == T.Tpwd
                    select u;
            int result = t.Count();
            return result;
        }

        public Tuser getteacherbyid(int teacher_id)
        {
            var data = (from p in db.Tuser
                        where p.Teacher_id == teacher_id
                        select p).FirstOrDefault();
            return data;
        }
    }
}

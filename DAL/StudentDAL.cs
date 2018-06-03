using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using System.Data.Entity;

namespace DAL
{
    public class StudentDAL:BaseDAL<Student>,IStudentDAL
    {
        TutorEntities db = new TutorEntities();
        public void insertstudent(Student student)
        {
            db.Student.Add(student);
            db.SaveChanges();
        }

        public int login(Student T)
        {
            var t = from i in db.Student
                    where i.Suser_name == T.Suser_name && i.Spwd == T.Spwd
                    select i;
            int result = t.Count();
            return result;

        }
    }
}

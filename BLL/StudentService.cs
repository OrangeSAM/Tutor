using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using IDAL;
using Model;

namespace BLL
{
    public partial class StudentService : BaseService<Student>, IStudentService
    {
        private IStudentDAL studentDAL = DALContainer.Container.Resolve<IStudentDAL>();

        public int login(Student T)
        {
            var log = studentDAL.login(T);
            return log;
        }

        public override void SetDal()
        {
            Dal = studentDAL;
        }
    }
}

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
    public partial class TeacherService:BaseService<Teacher>,ITeacherService
    {
        private ITeacherDAL teacherDAL = DALContainer.Container.Resolve<ITeacherDAL>();
        public override void SetDal()
        {
            Dal = teacherDAL;
        }
    }
}

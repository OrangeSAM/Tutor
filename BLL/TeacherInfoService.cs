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
    public partial class TeacherInfoService : BaseService<TeacherInfo>, ITeacherInfoService
    {
        private ITeacherInfoDAL teacherinfoDAL = DALContainer.Container.Resolve<ITeacherInfoDAL>();
        public override void SetDal()
        {
            Dal = teacherinfoDAL;
        }
    }
}

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

        public IEnumerable<TeacherInfo> getinfobygrade(string grade)
        {
            var log = teacherinfoDAL.getinfobygrade(grade);
            return log;
        }

        public override void SetDal()
        {
            Dal = teacherinfoDAL;
        }
    }
}

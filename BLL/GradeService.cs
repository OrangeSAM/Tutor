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
    public partial class GradeService : BaseService<grade>, IGradeService
    {
        private IGradeDAL gradeDAL = DALContainer.Container.Resolve<IGradeDAL>();
        public override void SetDal()
        {
            Dal = gradeDAL;
        }
    }
}

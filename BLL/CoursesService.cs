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
    public partial class CoursesService : BaseService<courses>, ICoursesService
    {
        private ICoursesDAL coursesDAL = DALContainer.Container.Resolve<ICoursesDAL>();
        public override void SetDal()
        {
            Dal = coursesDAL;
        }
    }
}

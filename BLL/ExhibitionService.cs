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
    public partial class ExhibitionService : BaseService<Exhibition>, IExhibitionService
    {
        private IExhibitionDAL exhibitionDAL = DALContainer.Container.Resolve<IExhibitionDAL>();
        public override void SetDal()
        {
            Dal = exhibitionDAL;
        }
    }
}

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
    public partial class IndentService : BaseService<indent>, IIndentService
    {
        private IIndentDAL indentDAL = DALContainer.Container.Resolve<IIndentDAL>();
        public override void SetDal()
        {
            Dal = indentDAL;
        }
    }
}

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
    public partial class SampleService : BaseService<Sample>, ISampleService
    {
        private ISampleDAL sampleDAL = DALContainer.Container.Resolve<ISampleDAL>();
        public override void SetDal()
        {
            Dal = sampleDAL;
        }
    }
}

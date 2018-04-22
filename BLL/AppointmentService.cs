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
    public partial class AppointmentService:BaseService<appointment>,IAppointmentService
    {
        private IAppiontmentDAL appointmentDAL = DALContainer.Container.Resolve<IAppiontmentDAL>();
        public override void SetDal()
        {
            Dal = appointmentDAL;
        }
    }
}

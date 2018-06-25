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
    public partial class TaskService : BaseService<Model.Task>, ITaskService
    {
        private ITaskDAL taskDAL = DALContainer.Container.Resolve<ITaskDAL>();
        public override void SetDal()
        {
            Dal = taskDAL;
        }

        public void updateappo(int task_id)
        {
            taskDAL.updateappo(task_id);
        }
    }
}

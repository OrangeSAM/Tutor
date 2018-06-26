using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public partial interface ITaskService:IBaseService<Model.Task>
    {
       void updateappo(int task_id);
       void updateteaid(int task_id, int teaid, string state);
    }
}

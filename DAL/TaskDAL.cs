using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace DAL
{
    public partial class TaskDAL : BaseDAL<Model.Task>, ITaskDAL
    {
        TutorEntities db = new TutorEntities();
        public void updateappo(int task_id)
        {
            Model.Task task = (from p in db.Task
                         where p.Task_id == task_id
                         select p).FirstOrDefault();
            task.appo_count += 1;
            db.SaveChanges();
        }
    }
}

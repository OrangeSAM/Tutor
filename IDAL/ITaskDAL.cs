﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public partial interface ITaskDAL:IBaseDAL<Model.Task>
    {
       void updateappo(int task_id);
       void updateteacher_id(int task_id,int teaid, string state);
    }
}

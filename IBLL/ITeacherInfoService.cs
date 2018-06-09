﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public partial interface ITeacherInfoService:IBaseService<TeacherInfo>
    {
        IEnumerable<TeacherInfo> getinfobygrade(string grade);
    }
}

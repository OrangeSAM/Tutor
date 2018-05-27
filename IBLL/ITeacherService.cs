using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public partial interface ITeacherService:IBaseService<Teacher>
    {
        int login(Teacher T);
        Teacher getteacherbyid(int teacher_id);
    }
}

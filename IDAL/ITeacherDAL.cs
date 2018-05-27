using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public partial interface ITeacherDAL:IBaseDAL<Teacher>
    {
        int login(Teacher T);
        Teacher getteacherbyid(int teacher_id);
    }
}

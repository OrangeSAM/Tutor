using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IStudentDAL:IBaseDAL<Student>
    {
        void insertstudent(Student student);
        int login(Student T);
    }
}

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
    public partial class SubjectService:BaseService<subject>,ISubjectService
    {
        private ISubjectDAL subjectDAL = DALContainer.Container.Resolve<ISubjectDAL>();

        public override void SetDal()
        {
            Dal = subjectDAL;
        }
        public IEnumerable<subject> getsubject(int grade_id)
        {
            var sub = subjectDAL.getsubject(grade_id);
            return sub;
        }
    }
}

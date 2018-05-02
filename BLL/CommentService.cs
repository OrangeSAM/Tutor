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
    public partial class CommentService:BaseService<Comment>,ICommentService
    {
        private ICommentDAL commentDAL = DALContainer.Container.Resolve<ICommentDAL>();
        public override void SetDal()
        {
            Dal = commentDAL;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq.Expressions;

namespace DAL
{
    public partial class BaseDAL<T> where T:class,new()
    {
        private DbContext dbcontext = DbContextFactory.Create();
        public void Add(T t)
        {
            dbcontext.Set<T>().Add(t);
        }
        public void Delete(T t)
        {
            dbcontext.Set<T>().Remove(t);
        }
        public void Update(T t)
        {
            dbcontext.Set<T>().AddOrUpdate(t);
        }
        public IQueryable<T> GetModels(Expression<Func<T,bool>> whereLambda)
        {
            return dbcontext.Set<T>().Where(whereLambda);
        }
        public IQueryable<T> GetModelsByPage<type>(int pageSize, int pageIndex, bool isAsc,
            Expression<Func<T, type>> OrderByLambda, Expression<Func<T, bool>> WhereLambda)
        {
            //是否升序
            if (isAsc)
            {
                return dbcontext.Set<T>().Where(WhereLambda).OrderBy(OrderByLambda).Skip((pageIndex - 1) * pageSize).Take(pageSize);
            }
            else
            {
                return dbcontext.Set<T>().Where(WhereLambda).OrderByDescending(OrderByLambda).Skip((pageIndex - 1) * pageSize).Take(pageSize);
            }
        }
        public IQueryable<T> GetAll()
        {
            return dbcontext.Set<T>();
        }
        public bool SaveChanges()
        {
            return dbcontext.SaveChanges() > 0;
        }
    }
}

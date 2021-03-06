﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using System.Threading.Tasks;
using Model;
using System.Runtime.Remoting.Messaging;

namespace DAL
{
    public partial class DbContextFactory
    {
        /// <summary>
        /// 创建EF上下文对象，已存在就直接取，不存在就创建，保证线程内是唯一
        /// </summary>
        /// <returns></returns>
        public static DbContext Create()
        {
            DbContext dbContext = CallContext.GetData("DbContext") as DbContext;
            if (dbContext == null)
            {
                dbContext = new TutorEntities();
                CallContext.SetData("DbContext", dbContext);
            }
            return dbContext;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using IDAL;
using Autofac;

namespace DALContainer
{
    public class Container
    {
        /// <summary>
        /// IOC容器
        /// </summary>
        public static IContainer container = null;
        public static T Resolve<T>()
        {
            try
            {
                if(container == null)
                {
                    Initialise();
                }
            }
            catch(System.Exception ex)
            {
                throw new System.Exception("IOC实例化出错！" + ex.Message);
            }
            return container.Resolve<T>();
        }
        public static void Initialise()
        {
            var builder = new ContainerBuilder();
            builder.RegisterType<AppointmentDAL>().As<IAppiontmentDAL>().InstancePerLifetimeScope();
            container = builder.Build();
        }
    }
}

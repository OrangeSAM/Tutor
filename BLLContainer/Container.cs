﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Autofac;
using BLL;
using IBLL;

namespace BLLContainer
{
    public class Container
    {
        /// <summary>
        /// IOC 容器
        /// </summary>
        public static IContainer container = null;

        /// <summary>
        /// 获取 IDal 的实例化对象
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static T Resolve<T>()
        {
            try
            {
                if (container == null)
                {
                    Initialise();
                }
            }
            catch (System.Exception ex)
            {
                throw new System.Exception("IOC实例化出错!" + ex.Message);
            }
            return container.Resolve<T>();
        }

        /// <summary>
        /// 初始化
        /// </summary>
        public static void Initialise()
        {
            var builder = new ContainerBuilder();
            //格式：builder.RegisterType<xxxx>().As<Ixxxx>().InstancePerLifetimeScope();
            builder.RegisterType<AppointmentService>().As<IAppointmentService>().InstancePerLifetimeScope();
            builder.RegisterType<CommentService>().As<ICommentService>().InstancePerLifetimeScope();
            builder.RegisterType<CoursesService>().As<ICoursesService>().InstancePerLifetimeScope();
            builder.RegisterType<ExhibitionService>().As<IExhibitionService>().InstancePerLifetimeScope();
            builder.RegisterType<GradeService>().As<IGradeService>().InstancePerLifetimeScope();
            builder.RegisterType<IndentService>().As<IIndentService>().InstancePerLifetimeScope();
            builder.RegisterType<SampleService>().As<ISampleService>().InstancePerLifetimeScope();
            builder.RegisterType<StudentService>().As<IStudentService>().InstancePerLifetimeScope();
            builder.RegisterType<TaskService>().As<ITaskService>().InstancePerLifetimeScope();
            builder.RegisterType<TeacherService>().As<ITeacherService>().InstancePerLifetimeScope();
            builder.RegisterType<TeacherInfoService>().As<ITeacherInfoService>().InstancePerLifetimeScope();
            builder.RegisterType<SubjectService>().As<ISubjectService>().InstancePerLifetimeScope();
            container = builder.Build();
        }
    }
}

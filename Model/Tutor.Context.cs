﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TutorEntities : DbContext
    {
        public TutorEntities()
            : base("name=TutorEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<appointment> appointment { get; set; }
        public virtual DbSet<Comment> Comment { get; set; }
        public virtual DbSet<courses> courses { get; set; }
        public virtual DbSet<Exhibition> Exhibition { get; set; }
        public virtual DbSet<grade> grade { get; set; }
        public virtual DbSet<indent> indent { get; set; }
        public virtual DbSet<Sample> Sample { get; set; }
        public virtual DbSet<Student> Student { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Task> Task { get; set; }
        public virtual DbSet<Teacher> Teacher { get; set; }
        public virtual DbSet<TeacherInfo> TeacherInfo { get; set; }
    }
}

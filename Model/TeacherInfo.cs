//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class TeacherInfo
    {
        public int Detail_id { get; set; }
        public string Ident_photo { get; set; }
        public string Studyat { get; set; }
        public string Major { get; set; }
        public string Available_subject { get; set; }
        public string Available_time { get; set; }
        public string Area { get; set; }
        public string Description { get; set; }
        public string Award { get; set; }
        public string Salary { get; set; }
        public string Experience { get; set; }
        public int Teaher_id { get; set; }
    
        public virtual Teacher Teacher { get; set; }
    }
}

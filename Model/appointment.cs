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
    
    public partial class appointment
    {
        public int appoint_id { get; set; }
        public int Teacher_id { get; set; }
        public int Task_id { get; set; }
        public System.DateTime Atime { get; set; }
        public string Astate { get; set; }
    
        public virtual Task Task { get; set; }
        public virtual Teacher Teacher { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tutor.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Task
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Task()
        {
            this.appointment = new HashSet<appointment>();
        }
    
        public int Task_id { get; set; }
        public int Student_id { get; set; }
        public string Grade { get; set; }
        public string Gender { get; set; }
        public string Subject { get; set; }
        public string Demand { get; set; }
        public string Location { get; set; }
        public string State { get; set; }
        public System.DateTime Upload_time { get; set; }
        public string Tel { get; set; }
        public string Payment { get; set; }
        public string Timedemend { get; set; }
        public int Teacher_id { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<appointment> appointment { get; set; }
        public virtual Student Student { get; set; }
        public virtual Teacher Teacher { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication4.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Course
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Course()
        {
            this.MarketPlace = new HashSet<MarketPlace>();
            this.UserToCourse = new HashSet<UserToCourse>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public Nullable<int> Professor { get; set; }
        public string DayOfWeek { get; set; }
        public Nullable<System.TimeSpan> Starts { get; set; }
        public Nullable<System.TimeSpan> Ends { get; set; }
        public Nullable<int> Room { get; set; }
        public Nullable<int> NumberOfStudents { get; set; }
        public Nullable<int> PlacesAvailable { get; set; }
        public string Type { get; set; }
        public string Examination { get; set; }
    
        public virtual Person Person { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MarketPlace> MarketPlace { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserToCourse> UserToCourse { get; set; }
    }
}

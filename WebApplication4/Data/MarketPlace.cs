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
    
    public partial class MarketPlace
    {
        public int ID { get; set; }
        public Nullable<int> CourseID { get; set; }
        public string Semester { get; set; }
        public string Department { get; set; }
    
        public virtual Course Course { get; set; }
    }
}

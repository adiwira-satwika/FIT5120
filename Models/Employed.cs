//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Environment_Green.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employed
    {
        public int EmployedId { get; set; }
        public string NumEmploted { get; set; }
        public string PercentageEnergy { get; set; }
        public string FamilyType { get; set; }
        public int HouseholdHouseholdId { get; set; }
    
        public virtual Household Household { get; set; }
    }
}

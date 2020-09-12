using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;

namespace Environment_Green.Models
{
    public class SampleFormViewModel
    {
    }

    public class FormOneViewModel
    {
        public int ID { get; set; }
        [Required]
        public string States { get; set; }
        public int Occupants { get; set; }
        public double Income { get; set; }
        [Display(Name = "Energy Bills")]
        public double EnergyBills { get; set; }
        public double WaterBills { get; set; }
        public string HeaterTypes { get; set; }
        public int HeaterDuration { get; set; }
        public string WMTypes { get; set; }
        public int WashingFrequency { get; set; }
        public int Room { get; set; }
        public string BulbTypes { get; set; }
        public int BulbDuration { get; set; }
    }
}
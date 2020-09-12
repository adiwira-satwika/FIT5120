using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Environment_Green.Models
{
    public class SampleFormViewModel
    {
    }

    public class FormOneViewModel
    {
        [Required]
        public State States { get; set; }
        public int Occupants { get; set; }
        public double Income { get; set; }
        [Display(Name = "Energy Bills")]
        public double EnergyBills { get; set; }
        public double WaterBills { get; set; }
        public HeaterType HeaterTypes { get; set; }
        public int HeaterDuration { get; set; }
        public WMType WMTypes { get; set; }
        public int WashingFrequency { get; set; }
        public int Room { get; set; }
        public BulbType BulbTypes { get; set; }
        public int BulbDuration { get; set; }
    }

    public enum State
        {
            NSW, VIC, ACT, QLD, TAS, SA, NT, WA
        }

        public enum HeaterType
        {
            Gas, Electric, AC
        }

        public enum WMType
        {
            Front, Top
        }

        public enum BulbType
        {
            Converntional, LED
        }
}
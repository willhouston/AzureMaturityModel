using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AzureMaturityModel.Api.Models
{
    public class MaturityLevel
    {
        [Key]
        public int MaturityLevelId { get; set; }

        [Required]
        [MaxLength(50)]
        public string MaturityLevelName { get; set; }

        public List<SolutionMetric> SolutionMetrics { get; set; }

        [Required]
        [MaxLength(50)]
        public string CreatedBy { get; set; }

        [Required]
        public DateTime CreatedDate { get; set; }

        [Required]
        [MaxLength(50)]
        public string ModifiedBy { get; set; }

        [Required]
        public DateTime ModifiedDate { get; set; }
    }
}

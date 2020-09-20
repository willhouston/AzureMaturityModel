using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AzureMaturityModel.Api.Models
{
    public class MaturityMetric
    {
        [Key]
        public int MaturityMetricId { get; set; }

        [Required]
        [MaxLength(50)]
        public string MaturityMetricName { get; set; }

        [MaxLength(1000)]
        public string Description { get; set; }

        [Required]
        public int SortKey { get; set; }

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

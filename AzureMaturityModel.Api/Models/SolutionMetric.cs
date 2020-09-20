using System;
using System.ComponentModel.DataAnnotations;

namespace AzureMaturityModel.Api.Models
{
    public class SolutionMetric
    {
        [Key]
        public int SolutionId { get; set; }

        [Key]
        public int MaturityMetricId { get; set; }

        [MaxLength(50)]
        public string EnvironmentTag { get; set; }
    }
}

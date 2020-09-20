using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AzureMaturityModel.Api.Models
{
    public class MetricCategory
    {
        
        [Key]
        public int MetricCategoryId { get; set; }

        [Required]
        [MaxLength(50)]
        public string MetricCategoryName { get; set; }

        public List<MaturityMetric> MaturityMetrics { get; set; }

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

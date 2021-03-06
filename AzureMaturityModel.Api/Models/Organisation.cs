﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AzureMaturityModel.Api.Models
{ 
    public class Organisation
    {
        [Key]
        public Guid OrganisationId { get; set; }

        [Required]
        [MaxLength(50)]
        public string OrganisationName { get; set; }

        public List<Team> Teams { get; set; }

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

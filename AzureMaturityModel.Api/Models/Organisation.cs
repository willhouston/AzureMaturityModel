using System;
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
    }
}

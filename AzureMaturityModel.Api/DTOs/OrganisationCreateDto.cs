using System;
using System.ComponentModel.DataAnnotations;

namespace AzureMaturityModel.Api.DTOs
{
    public class OrganisationCreateDto
    {
        [Required]
        [MaxLength(50)]
        public string OrganisationName { get; set; }

        [Required]
        [MaxLength(50)]
        public string User { get; set; }
    }
}

using System;
using System.ComponentModel.DataAnnotations;

namespace AzureMaturityModel.Api.DTOs
{
    public class OrganisationUpdateDto
    {
        [Required]
        [MaxLength(50)]
        public string OrganisationName { get; set; }

    }
}

using System;
namespace AzureMaturityModel.Api.DTOs
{
    public class OrganisationReadDto
    {
        public Guid OrganisationId { get; set; }

        public string OrganisationName { get; set; }

        public string CreatedBy { get; set; }

        public DateTime CreatedDate { get; set; }

        public string ModifiedBy { get; set; }

        public DateTime ModifiedDate { get; set; }
    }
}

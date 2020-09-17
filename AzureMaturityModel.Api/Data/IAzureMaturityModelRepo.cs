using System;
using System.Collections.Generic;
using AzureMaturityModel.Api.Models;

namespace AzureMaturityModel.Api.Data
{
    public interface IAzureMaturityModelRepo
    {
        bool SaveChanges();

        IEnumerable<Organisation> GetOrganisations();

        Organisation GetOrganisationById(Guid OrganisationId);

        void CreateOrganisation(Organisation org);

        void UpdateOrganisation(Organisation org);

        void DeleteOrganisation(Organisation org);
    }
}

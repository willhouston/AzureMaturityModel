using System;
using System.Collections.Generic;
using AzureMaturityModel.Api.Models;

namespace AzureMaturityModel.Api.Data
{
    public interface IAzureMaturityModelRepo
    {
        IEnumerable<Organisation> GetOrganisations();

        Organisation GetOrganisationById(Guid OrganisationId);
    }
}

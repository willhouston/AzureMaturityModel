using System;
using System.Collections.Generic;
using System.Linq;
using AzureMaturityModel.Api.Models;

namespace AzureMaturityModel.Api.Data
{
    public class SqlAzureMaturityModelRepo : IAzureMaturityModelRepo
    {
        private readonly AzureMaturityModelContext _context;

        public SqlAzureMaturityModelRepo(AzureMaturityModelContext context)
        {
            _context = context;
        }

        public Organisation GetOrganisationById(Guid organisationId)
        {
            return _context.Organisations.FirstOrDefault(p => p.OrganisationId == organisationId);
        }

        public IEnumerable<Organisation> GetOrganisations()
        {
            return _context.Organisations.ToList();
        }
    }
}

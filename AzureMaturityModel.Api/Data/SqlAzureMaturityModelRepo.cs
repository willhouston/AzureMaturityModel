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

        public void CreateOrganisation(Organisation org)
        {
            if(org == null)
            {
                throw new ArgumentNullException(nameof(org));
            }

            _context.Organisations.Add(org);
        }

        public void DeleteOrganisation(Organisation org)
        {
            if(org == null)
            {
                throw new ArgumentNullException(nameof(org));
            }

            _context.Organisations.Remove(org);
        }

        public Organisation GetOrganisationById(Guid organisationId)
        {
            return _context.Organisations.FirstOrDefault(p => p.OrganisationId == organisationId);
        }

        public IEnumerable<Organisation> GetOrganisations()
        {
            return _context.Organisations.ToList();
        }

        public bool SaveChanges()
        {
            return (_context.SaveChanges()) >= 0;

        }

        public void UpdateOrganisation(Organisation org)
        {
            // do nothing - taken care of by DBContext
        }

    }
}

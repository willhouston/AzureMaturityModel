using System;
using System.Collections.Generic;
using AzureMaturityModel.Api.Models;

namespace AzureMaturityModel.Api.Data
{
    public class MockAzureMaturityModelRepo : IAzureMaturityModelRepo
    {
        public Organisation GetOrganisationById(Guid OrganisationId)
        {
            return new Organisation { OrganisationId = new Guid("7f666873-6fb5-4464-846c-8889c3abf6c1"), OrganisationName = "Mock Org 1" };
        }

        public IEnumerable<Organisation> GetOrganisations()
        {
            var organisations = new List<Organisation>
            {
                new Organisation { OrganisationId = new Guid("7f666873-6fb5-4464-846c-8889c3abf6c1"), OrganisationName = "Mock Org 1" },
                new Organisation { OrganisationId = new Guid("15d5c36e-1236-4006-996d-16c174c5eff3"), OrganisationName = "Mock Org 2" },
                new Organisation { OrganisationId = new Guid("8b1a7bc6-72c7-4ece-a044-42227a3ebf94"), OrganisationName = "Mock Org 3" }
            };

            return organisations;
        }
    }
}

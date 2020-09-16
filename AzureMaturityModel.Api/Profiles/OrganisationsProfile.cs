using AutoMapper;
using AzureMaturityModel.Api.DTOs;
using AzureMaturityModel.Api.Models;

namespace AzureMaturityModel.Api.Profiles
{
    public class OrganisationsProfile : Profile
    {
        public OrganisationsProfile()
        {
            CreateMap<Organisation, OrganisationReadDto>();
        }
    }
}

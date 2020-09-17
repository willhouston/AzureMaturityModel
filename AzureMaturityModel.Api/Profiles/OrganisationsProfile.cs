using AutoMapper;
using AzureMaturityModel.Api.DTOs;
using AzureMaturityModel.Api.Models;

namespace AzureMaturityModel.Api.Profiles
{
    public class OrganisationsProfile : Profile
    {
        public OrganisationsProfile()
        {
            //source -> destination
            CreateMap<Organisation, OrganisationReadDto>();
            CreateMap<Organisation, OrganisationListReadDto>();
            CreateMap<OrganisationCreateDto, Organisation>();
            CreateMap<OrganisationUpdateDto, Organisation>();
            CreateMap<Organisation, OrganisationUpdateDto>();
        }
    }
}

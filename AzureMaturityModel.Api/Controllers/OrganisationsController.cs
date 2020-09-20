using System;
using System.Collections.Generic;
using AutoMapper;
using AzureMaturityModel.Api.Data;
using AzureMaturityModel.Api.DTOs;
using AzureMaturityModel.Api.Models;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;

namespace AzureMaturityModel.Api.Controllers
{
    // hard coding route to ensure contract stays in tact even if we change class name
    [Route("api/organisations")]
    [ApiController]
    public class OrganisationsController : ControllerBase
    {
        private readonly IAzureMaturityModelRepo _repository;
        private readonly IMapper _mapper;

        public OrganisationsController(IAzureMaturityModelRepo repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        //GET api/organisations
        [HttpGet]
        public ActionResult<IEnumerable<OrganisationListReadDto>> GetAllOrganisations()
        {
            var organisationItems = _repository.GetOrganisations();

            return Ok(_mapper.Map<IEnumerable<OrganisationListReadDto>>(organisationItems));
        }

        //GET api/organisations/{organisationId}
        [Route("{id}")]
        [HttpGet("{id}", Name= "GetOrganisationById")]
        public ActionResult<OrganisationReadDto> GetOrganisationById(Guid id)
        {
            var organisationItem = _repository.GetOrganisationById(id);

            if(organisationItem != null)
                return Ok(_mapper.Map<OrganisationReadDto>(organisationItem));

            return NotFound();
        }

        //POST api/organisations
        [HttpPost]
        public ActionResult<OrganisationReadDto> CreateOrganisation(OrganisationCreateDto org)
        {

            var organisationModel = _mapper.Map<Organisation>(org);

            organisationModel.OrganisationId = Guid.NewGuid();
            organisationModel.CreatedBy = org.User;
            organisationModel.CreatedDate = DateTime.UtcNow;
            organisationModel.ModifiedBy = org.User;
            organisationModel.ModifiedDate = DateTime.UtcNow;


            _repository.CreateOrganisation(organisationModel);

            _repository.SaveChanges();

            var orgReadDto = _mapper.Map<OrganisationReadDto>(organisationModel);

            return CreatedAtRoute(nameof(GetOrganisationById), new { id=orgReadDto.OrganisationId }, orgReadDto);
        }

        //PUT api/organisations/{id}
        [HttpPut("{id}")]
        public ActionResult UpdateOrganisation(Guid id, OrganisationUpdateDto org)
        {
            var organisationModelFromRepo = _repository.GetOrganisationById(id);
            if(organisationModelFromRepo == null)
            {
                return NotFound();
            }

            _mapper.Map(org, organisationModelFromRepo);

            organisationModelFromRepo.ModifiedBy = org.User;
            organisationModelFromRepo.ModifiedDate = DateTime.UtcNow;

            _repository.UpdateOrganisation(organisationModelFromRepo);

            _repository.SaveChanges();

            return NoContent();
        }

        //PATCH api/organisations/{id}
        [HttpPatch("{id}")]
        public ActionResult PartialOrganisationUpdate(Guid id, JsonPatchDocument<OrganisationUpdateDto> patchDoc)
        {
            var organisationModelFromRepo = _repository.GetOrganisationById(id);
            if (organisationModelFromRepo == null)
            {
                return NotFound();
            }

            var organisationToPatch = _mapper.Map<OrganisationUpdateDto>(organisationModelFromRepo);
            patchDoc.ApplyTo(organisationToPatch, ModelState);

            if (!TryValidateModel(organisationToPatch))
            {
                return ValidationProblem(ModelState);
            }

            _mapper.Map(organisationToPatch, organisationModelFromRepo);

            _repository.UpdateOrganisation(organisationModelFromRepo);

            _repository.SaveChanges();

            return NoContent();
        }

        //DELETE api/organisations/{id}
        [HttpDelete("{id}")]
        public ActionResult DeleteOrganisation(Guid id)
        {
            var organisationModelFromRepo = _repository.GetOrganisationById(id);
            if (organisationModelFromRepo == null)
            {
                return NotFound();
            }

            _repository.DeleteOrganisation(organisationModelFromRepo);

            _repository.SaveChanges();

            return NoContent();
        }
    }
}

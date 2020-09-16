using System;
using AzureMaturityModel.Api.Models;
using Microsoft.EntityFrameworkCore;

namespace AzureMaturityModel.Api.Data
{
    public class AzureMaturityModelContext : DbContext
    {
        public AzureMaturityModelContext(DbContextOptions<AzureMaturityModelContext> opt) :base(opt)
        {

        }

        public DbSet<Organisation> Organisations { get; set; }
    }
}

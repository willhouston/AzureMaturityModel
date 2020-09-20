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

        protected  override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<SolutionMetric>().HasKey(table => new
            {
                table.SolutionId,
                table.MaturityMetricId
            });
        }

        public DbSet<Organisation> Organisation { get; set; }

        public DbSet<MetricCategory> MetricCategory { get; set; }

        public DbSet<MaturityLevel> MaturityLevel { get; set; }


    }
}

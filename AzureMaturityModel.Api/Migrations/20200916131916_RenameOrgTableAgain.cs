using Microsoft.EntityFrameworkCore.Migrations;

namespace AzureMaturityModel.Api.Migrations
{
    public partial class RenameOrgTableAgain : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_Organisation",
                table: "Organisation");

            migrationBuilder.RenameTable(
                name: "Organisation",
                newName: "Organisations");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Organisations",
                table: "Organisations",
                column: "OrganisationId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_Organisations",
                table: "Organisations");

            migrationBuilder.RenameTable(
                name: "Organisations",
                newName: "Organisation");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Organisation",
                table: "Organisation",
                column: "OrganisationId");
        }
    }
}

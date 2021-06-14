using Microsoft.EntityFrameworkCore;


namespace MomdEfCoreApp
{
    public class AppDbContext : DbContext
    {
        private const string ConnectionString =            //#A
            @"Server=(localdb)\mssqllocaldb;
             Database=MomdEfCoreDb;
             Trusted_Connection=True";

        protected override void OnConfiguring(
            DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(ConnectionString); //#B
        }

        public DbSet<FamilyMember> FamilyMembers { get; set; }
    }
}


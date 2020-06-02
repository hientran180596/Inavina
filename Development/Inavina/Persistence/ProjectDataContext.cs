using Inavina.Core.Domain;
using System.Data.Entity;
using System.Data.Common;
using System;

namespace Inavina.Persistence
{
    public class ProjectDataContext : DbContext
    {
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //modelBuilder.Configurations.Add(new CourseConfiguration());
        }

        #region Initial Object
        public ProjectDataContext() : base("DefaultConnection") { this.Configuration.LazyLoadingEnabled = false; }
        protected ProjectDataContext(string connectionString) : base(connectionString) { }
        protected ProjectDataContext(DbConnection conn, DbContextTransaction transaction) : base(conn, false)
        {
            try
            {
                if (transaction != null)
                {
                    if (transaction.UnderlyingTransaction != null)
                        this.Database.UseTransaction(transaction.UnderlyingTransaction);
                    else
                        transaction.Rollback();
                }
            }
            catch (Exception ex)
            {
               Core.Helper.Logger.ErrorLog(ex.Message);
            }
        }
        #endregion

        #region Methods
        public static ProjectDataContext GetDataContext()
        {
            return new ProjectDataContext();
        }

        public static ProjectDataContext GetDataContext(string connectionString)
        {
            return new ProjectDataContext();
        }

        public static ProjectDataContext GetDataContext(ProjectDataContext context, DbContextTransaction transaction)
        {
            if (transaction != null && context != null)
            {
                return new ProjectDataContext(context.Database.Connection, transaction);
            }
            return new ProjectDataContext();
        }
        #endregion

        #region Tables
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<AuthorityGroup> AuthorityGroups { get; set; }
        public virtual DbSet<ProgramFunctionMaster> ProgramFunctionMasters { get; set; }
        public virtual DbSet<ProgramFunctionAuthority> ProgramFunctionAuthoritys { get; set; }
        public virtual DbSet<UserAuthority> UserAuthoritys { get; set; }
        #endregion

    }
}

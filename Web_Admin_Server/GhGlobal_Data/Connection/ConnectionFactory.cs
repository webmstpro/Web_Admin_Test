using GhGlobal_Data.Services;
using System.Configuration;
using System.Data;
using System.Data.Common;

namespace GhGlobal_Data.Connection
{
    public class ConnectionFactory : IConnectionFactory
    {
        //private readonly IConfiguration configuration;
        private readonly string _connectionString;//= new GhGlobal_Data()

        public IDbConnection GetConnection
        {
            get
            {
                var factory = DbProviderFactories.GetFactory("System.Data.SqlClient");
                var conn = factory.CreateConnection();
                conn.ConnectionString = _connectionString;
                conn.Open();
                return conn;
            }
        }
    }
}

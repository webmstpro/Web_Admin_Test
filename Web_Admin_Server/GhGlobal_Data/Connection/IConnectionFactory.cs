using System.Data;

namespace GhGlobal_Data.Services
{
    public interface IConnectionFactory
    {
        IDbConnection GetConnection { get; }
    }
}

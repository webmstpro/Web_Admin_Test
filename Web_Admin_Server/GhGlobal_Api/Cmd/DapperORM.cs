using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace GhGlobal_Api.Cmd
{
    public class DapperORM
    {
        public static void ExecuteWithoutReturn(string procedureName, DynamicParameters param = null, string conStr = null)
        {
            using (SqlConnection sqlCon = new SqlConnection(conStr))
            {
                sqlCon.Open();
                sqlCon.Execute(procedureName, param, commandType: CommandType.StoredProcedure);
            }
        }

        public static T ExecuteReturnScalar<T>(string procedureName, DynamicParameters param = null, string conStr = null)
        {
            using (SqlConnection sqlCon = new SqlConnection(conStr))
            {
                sqlCon.Open();
                return (T)Convert.ChangeType(sqlCon.Execute(procedureName, param, commandType: CommandType.StoredProcedure), typeof(T));
            }
        }

        public static IEnumerable<T> ReturnList<T>(string procedureName, DynamicParameters param = null, string conStr = null)
        {
            using (SqlConnection sqlCon = new SqlConnection(conStr))
            {
                sqlCon.Open();
                return sqlCon.Query<T>(procedureName, param, commandType: CommandType.StoredProcedure);
            }
        }

        public static async Task<IEnumerable<T>> ReturnListAsync<T>(string procedureName, DynamicParameters param = null, string conStr = null)
        {
            using (SqlConnection sqlCon = new SqlConnection(conStr))
            {
                sqlCon.Open();
                return await sqlCon.QueryAsync<T>(procedureName, param, commandType: CommandType.StoredProcedure);
            }
        }

        //public static Task<IEnumerable<T>> QueryAsync<T>(this IDbConnection cnn, string sql, object param = null, IDbTransaction transaction = null, int? commandTimeout = null, CommandType? commandType = null) =>
        //    QueryAsync<T>(cnn, typeof(T), new CommandDefinition(sql, param, transaction, commandTimeout, commandType, CommandFlags.Buffered, default(CancellationToken)));

    }
}

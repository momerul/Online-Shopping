using System; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Momerul.DataAccessLayer
{
    public class DataPassing
    {
        public static string Connection
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString.ToString();
            }
        }

        public static SqlParameter AddParameter(string parameter,object value,SqlDbType type,int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = parameter;
            param.Value = value.ToString();
            param.SqlDbType = type;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;
        }

        public static DataTable SPExecute(string ProcedureName,SqlParameter[] para)
        {
            SqlConnection con = new SqlConnection(Connection);
            SqlCommand scmd = new SqlCommand(ProcedureName, con);
            scmd.Parameters.AddRange(para);
            scmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter dataAdapter = new SqlDataAdapter(scmd);
            DataTable dt = new DataTable();

            try
            {
                dataAdapter.Fill(dt);
            }
            catch(Exception)
            {
                
            }
            finally
            {
                dataAdapter.Dispose();
                scmd.Dispose();
                scmd.Parameters.Clear();
                con.Dispose();
            }
            return dt;
        }
    }
}
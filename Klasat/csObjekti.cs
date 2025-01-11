using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SMS.Klasat
{

    public class csObjekti
    {

        protected SqlConnection Connection;
        
        public csObjekti()
        {
            string connection = ConfigurationManager.ConnectionStrings["ConnectionStringB"].ToString();
            Connection = new SqlConnection(connection);
        }
        public void fnConnection()
        {
            string connA = ConfigurationManager.ConnectionStrings["ConnectionStringB"].ToString();
            string connB = ConfigurationManager.ConnectionStrings["ConnectionStringA"].ToString();

        }
         public int RunPr(string storePRName, IDataParameter[] parameters)
        {
            int res = 0;
            try
            {
                Connection.Open();

                SqlCommand command = new SqlCommand(storePRName, Connection);
                command.CommandType = CommandType.StoredProcedure;

                foreach (SqlParameter parameter in parameters)
                {
                    command.Parameters.Add(parameter);

                }
                command.ExecuteNonQuery();

                Connection.Close();
            }
            catch (Exception) {
              //  string error = "Gabim gjate thirrjes se Procedurave...!";
               
            }
            return res;
        }

        public DataSet RunQuery( string query, string tableName )
        {
            DataSet ds = new DataSet();

            Connection.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter();

            SqlCommand cmd = new SqlCommand(query, Connection);
            cmd.CommandType = CommandType.Text;
            sqlda.SelectCommand = cmd;
            sqlda.Fill(ds, tableName);
            Connection.Close();
            return ds;
        
        }



    }
}
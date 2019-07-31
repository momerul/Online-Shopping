using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Momerul.DataAccessLayer;

namespace Momerul.BusinessLayer
{
    public class Shopping
    {
        public int CategoryID;
        public string CategoryName;

        public string ProductName;
        public string ProductPrice;
        public string ProducDescription;
        public string ProductImage;
        public int ProductQuantity;

        public string Name;
        public string Email;
        public int Mobile;
        public string Address;
        public int ProductId;

        public DataTable Search()
        {
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = DataPassing.AddParameter("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 200);
            DataTable dt = DataPassing.SPExecute("sp_Search", parameter);
            return dt;
        }
        public void AddNewCategory()
        {
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = DataPassing.AddParameter("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 200);
            DataTable dt = DataPassing.SPExecute("sp_addNewCategory", parameter);
        }
        public void AddOrderDetails()
        {
            SqlParameter[] parameter = new SqlParameter[5];
            parameter[0] = DataPassing.AddParameter("@Name", Name, System.Data.SqlDbType.VarChar, 200);
            parameter[1] = DataPassing.AddParameter("@Email", Email, System.Data.SqlDbType.VarChar, 100);
            parameter[2] = DataPassing.AddParameter("@Mobile", Mobile, System.Data.SqlDbType.Int, 500);
            parameter[3] = DataPassing.AddParameter("@Address", Address, System.Data.SqlDbType.VarChar, 500);
            parameter[4] = DataPassing.AddParameter("@ProductId", ProductId, System.Data.SqlDbType.Int, 100);
            DataTable dataTable = DataPassing.SPExecute("sp_orderDetails", parameter);
        }
        public void AddNewProduct()
        {
            SqlParameter[] parameter = new SqlParameter[6];
            parameter[0] = DataPassing.AddParameter("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 200);
            parameter[1] = DataPassing.AddParameter("@ProductPrice", ProductPrice, System.Data.SqlDbType.VarChar, 100);
            parameter[2] = DataPassing.AddParameter("@ProducDescription", ProducDescription, System.Data.SqlDbType.VarChar, 500);
            parameter[3] = DataPassing.AddParameter("@ProductImage", ProductImage, System.Data.SqlDbType.VarChar, 500);
            parameter[4] = DataPassing.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 100);
            parameter[5] = DataPassing.AddParameter("@ProductQuantity", ProductQuantity, System.Data.SqlDbType.Int, 100);

            DataTable dataTable = DataPassing.SPExecute("SP_AddNewproduct", parameter);
        }

        public DataTable GetCategorie()
        {
            SqlParameter[] parameter = new SqlParameter[0];
            DataTable dt = DataPassing.SPExecute("getAllCategory", parameter);
            return dt;
        }

        public DataTable GetAllProduct()
        {
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = DataPassing.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataPassing.SPExecute("getProducts", parameter);
            return dt;
        }      
    }
}
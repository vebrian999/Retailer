﻿using System.Data.SqlClient;

namespace Retailer_App.Setup
{
    public class Db_Connection
    {
        public SqlConnection SqlConnect;
        public string SqlNotice;

        private readonly string dbserver;
        private readonly string dbname;

        private void Notice_Handler(object sender, SqlInfoMessageEventArgs e)
        {
            SqlNotice = e.Message;
        }

        public Db_Connection()
        {
            SqlConnect = new SqlConnection();
            dbserver = @"DESKTOP-LBM3LIU\SQLEXPRESS";
            dbname = "Retailer_DB";
        }

        public bool OpenConnection()
        {
            SqlConnect.ConnectionString = $"Server={dbserver};Database={dbname};Trusted_Connection=yes;";
            SqlConnect.InfoMessage += Notice_Handler;
            SqlConnect.FireInfoMessageEventOnUserErrors = true;
            SqlConnect.Open();
            return true;
        }

        public bool CloseConnection()
        {
            SqlConnect.InfoMessage -= Notice_Handler;
            SqlConnect.Close();
            return true;
        }
    }
}

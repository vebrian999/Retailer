using System;
using System.ComponentModel;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows;
using System.Data.SqlClient;
using Retailer_App.Setup;
using Retailer_App.Models;
using System.Security.RightsManagement;

namespace Retailer_App.ViewModels
{
    public class InventoryViewModel : INotifyPropertyChanged
    {
        public InventoryViewModel()
        {
            collection = new ObservableCollection<Inventory>();
            dbconn = new Db_Connection();
            model = new Inventory();

            InsertCommand = new RelayCommand(async () => await InsertDataAsync());
            UpdateCommand = new RelayCommand(async () => await UpdateDataAsync());
            DeleteCommand = new RelayCommand(async () => await DeleteDataAsync());
            SelectCommand = new RelayCommand(async () => await ReadDataAsync());
            SelectCommand.Execute(null);
        }

        public RelayCommand InsertCommand { get; set; }
        public RelayCommand DeleteCommand { get; set; }
        public RelayCommand UpdateCommand { get; set; }
        public RelayCommand SelectCommand { get; set; }

        public ObservableCollection<Inventory> Collection
        {
            get
            {
                return collection;
            }
            set
            {
                collection = value;
                PropertyChanged?.Invoke(this,
                    new PropertyChangedEventArgs(null));
            }
        }

        public Inventory Model
        {
            get
            {
                return model;
            }
            set
            {
                if (value != null)
                {
                    IsChecked = (value.Status == "Active") ? true : false;
                }
                model = value;
                PropertyChanged?.Invoke(this,
                    new PropertyChangedEventArgs(null));
            }
        }

        public bool IsChecked
        {
            get
            {
                return check;
            }
            set
            {
                check = value;
                PropertyChanged?.Invoke(this,
                    new PropertyChangedEventArgs(null));
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public event Action OnCallBack;

        private readonly Db_Connection dbconn;
        private User user;
        private ObservableCollection<Inventory> collection;
        private Inventory model;
        private bool check;

        private async Task ReadDataAsync()
        {
            dbconn.OpenConnection();

            await Task.Delay(0);
            var query = "SELECT * FROM inventories";
            var sqlcmd = new SqlCommand(query, dbconn.SqlConnect);
            var sqlresult = sqlcmd.ExecuteReader();

            if (sqlresult.HasRows)
            {
                collection.Clear();
                while (sqlresult.Read())
                {
                    collection.Add(new Inventory
                    {
                        Uid = sqlresult[0].ToString(),
                        Users = {
                        Name = sqlresult[1].ToString(),
                        UserName = sqlresult[2].ToString(),
                        Keypass = sqlresult[3].ToString(),
                        },
                        LogDate = sqlresult[4].ToString(),
                        Type = sqlresult[5].ToString(),
                        Description = sqlresult[6].ToString(),
                        Status = (sqlresult[7].ToString() == "1") ?
                        "Active" :
                        "Not Active",
                    });
                }
            }
            dbconn.CloseConnection();
            OnCallBack?.Invoke();
        }

        private async Task InsertDataAsync()
        {
            if (IsValidating())
            {
                dbconn.OpenConnection();
                var state = check ? "1" : "0";
                var query = $"INSERT INTO inventories VALUES (" +
                    $"'{user.Name}, " +
                    $"'{user.UserName}, " +
                    $"'{user.Keypass}, " +
                    $"'{model.LogDate}, " +
                    $"'{model.Type}, " +
                    $"'{model.Description}, " +
                    $"'{state}')";
                var sqlcmd = new SqlCommand(query, dbconn.SqlConnect);
                sqlcmd.ExecuteNonQuery();
                dbconn.CloseConnection();
                await ReadDataAsync();
            }
        }

        private async Task UpdateDataAsync()
        {
            if (IsValidating())
            {
                dbconn.OpenConnection();
                var state = check ? "1" : "0";
                var query = $"UPDATE inventories SET (" +
                    $"'{user.Name}, " +
                    $"'{user.UserName}, " +
                    $"'{user.Keypass}, " +
                    $"'{model.LogDate}, " +
                    $"'{model.Type}, " +
                    $"'{model.Description}, " +
                    $"'{state}')" +
                $"WHERE uid = '{model.Uid}'";
                var sqlcmd = new SqlCommand(query, dbconn.SqlConnect);
                sqlcmd.ExecuteNonQuery();
                dbconn.CloseConnection();
                await ReadDataAsync();
            }
        }

        private async Task DeleteDataAsync()
        {
            if (IsValidating())
            {
                var msg = MessageBox.Show("Are you sure?", "Question",
                    MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (msg == MessageBoxResult.Yes)
                {
                    dbconn.OpenConnection();
                    var query = $"DELETE FROM inventories WHERE uid = '{model.Uid}'";
                    var sqlcmd = new SqlCommand(query, dbconn.SqlConnect);
                    sqlcmd.ExecuteNonQuery();
                    dbconn.CloseConnection();
                }
                await ReadDataAsync();
            }
        }

        private bool IsValidating()
        {
            var flag = true;
            if (user.Name == null)
            {
                MessageBox.Show("Text 1 cannot be empty!!!", "Warning",
                    MessageBoxButton.OK,
                    MessageBoxImage.Exclamation);
                flag = false;
            }
            return flag;
        }
    }
}

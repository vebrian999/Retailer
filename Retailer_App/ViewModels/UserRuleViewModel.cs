using System;
using System.ComponentModel;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows;
using System.Data.SqlClient;
using Retailer_App.Setup;
using Retailer_App.Models;
using System.Security.RightsManagement;
using Retailer_App.Views.Home;
using System.Security.Cryptography;
using System.Xml.Linq;

namespace Retailer_App.ViewModels
{
    public class UserRuleViewModel : INotifyPropertyChanged
    {
        public UserRuleViewModel()
        {
            collection = new ObservableCollection<UserRule>();
            dbconn = new Db_Connection();
            model = new UserRule();

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

        public ObservableCollection<UserRule> Collection
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

        public UserRule Model
        {
            get
            {
                return model;
            }
            set
            {
                if (value != null)
                {
                    IsChecked = (user.Status == "Active") ? true : false;
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
        private ObservableCollection<UserRule> collection;
        private UserRule model;
        private bool check;

        private async Task ReadDataAsync()
        {
            dbconn.OpenConnection();

            await Task.Delay(0);
            var query = "SELECT * FROM usersrule";
            var sqlcmd = new SqlCommand(query, dbconn.SqlConnect);
            var sqlresult = sqlcmd.ExecuteReader();

            if (sqlresult.HasRows)
            {
                collection.Clear();
                while (sqlresult.Read())
                {
                    collection.Add(new UserRule
                    {
                        Uid = sqlresult[0].ToString(),
                        User = {
                        Name = sqlresult[1].ToString(),
                        UserName = sqlresult[2].ToString(),
                        Keypass = sqlresult[3].ToString(),
                        Status = (sqlresult[4].ToString() == "1") ?
                        "Active" :
                        "Not Active",
                        },
                        Menu = sqlresult[5].ToString(),
                        Access = sqlresult[6].ToString(),
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
                var query = $"INSERT INTO usersrule VALUES (" +
                    $"'{user.Name}, " +
                    $"'{user.UserName}, " +
                    $"'{user.Keypass}, " +
                    $"'{state}, " +
                    $"'{model.Menu}, " +
                    $"'{model.Access}, ";
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
                var query = $"UPDATE usersrule SET (" +
                    $"'{user.Name}, " +
                    $"'{user.UserName}, " +
                    $"'{user.Keypass}, " +
                    $"'{state}, " +
                    $"'{model.Menu}, " +
                    $"'{model.Access}, " +
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
                    var query = $"DELETE FROM usersrule WHERE uid = '{model.Uid}'";
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
            if (model.Menu == null)
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

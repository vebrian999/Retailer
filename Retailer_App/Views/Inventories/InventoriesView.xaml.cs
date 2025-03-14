﻿using Retailer_App.ViewModels;
using Retailer_App.Views.Home;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Retailer_App.Views.Inventories
{
    /// <summary>
    /// Interaction logic for InventoriesView.xaml
    /// </summary>
    public partial class InventoriesView : UserControl
    {
        public InventoriesView()
        {
            InitializeComponent();
            vm = new InventoryViewModel();
            DataContext = vm;
        }

        private readonly InventoryViewModel vm;

        private void TblData_SelectedCellsChanged(object sender, RoutedEventArgs e)
        {
        }

        private void ResetComponent()
        {
            
        }

        private void BtnNew_Click(object sender, RoutedEventArgs e)
        {
            ResetComponent();
        } 

    }
}

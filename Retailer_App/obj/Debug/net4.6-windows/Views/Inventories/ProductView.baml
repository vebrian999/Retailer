   M S B A M L   `   `   `  ����G  CRetailer_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:Retailer_App.Views.InventoriesRetailer_App.Views.Inventories  5      0    *Retailer_App.Views.Inventories.ProductView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local,clr-namespace:Retailer_App.Views.Inventories     5      ���#0E2C49.��5
      �   � RowDefinitions  5   
   �� 5      $	��14* �6   �� 5      $	��48* �6   �� 5      $	��26* �6   �� 5      $	��17* �6    � ColumnDefinitions 5   
   �� 5      $	��46* �6   �� 5      $	��15* �6   .+�5   
   �� $��DATA PRODUCT��6      Content_Label#��[  6'   $��22(�6N   $
��Left=�6\   $��10,0,0,0q�6w   $��Center=�6�   $��40��6�   $	��200��6�   �� 5   
   $��Product��6   #��[  6#   $��15(�6J   $
��Left=�6X   $��	80,10,0,0q�6s   $��2��6�   $	��Top=�6�   �� 5   
   $
��Name��6   #��[  6   $��15(�6F   $
��Left=�6T   $��	81,56,0,0q�6o   $��2��6�   $	��Top=�6�   �� 5   
   $��Active��6   #��[  6!   $��15(�6H   $
��Left=�6V   $��
197,56,0,0q�6q   $��2��6�   $	��Top=�6�   �� 5   
   $
��Code��6   #��[  6   $��15(�6F   $
��Left=�6T   $��
418,55,0,0q�6o   $��2��6�   $	��Top=�6�   � 5   
   $��1��6   $��0��6    5      �� 5      $��2* �6#   �� 5      $	��86* �6#   �� 5      $��1* �6#   .+�5!      &   System.Windows.Controls.DataGrid  -   5          Name$ TblData��5!      $	��200��5"   U      HeadersVisibility$ Column=�6b      EnableRowVirtualization$ False��6}      CanUserAddRows$ False��6�      CanUserDeleteRows$ False��6�      AutoGenerateColumns$ False��6�   $
��Left=�6�   $��1��6  $	��Top=�6  ��6   �� *
Collection+ �� SelectedItem 66   �� *Model+	   Columns	 5#      0  *System.Windows.Controls.DataGridTextColumn  5$      ,  &System.Windows.Controls.DataGridColumn
   Header$

 CODE��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 6O   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *Uid+6O     5%      $

 NAME��6)   $ 8* 6P    67   �� *Name+6P     5&      $
 STATUS��6)   $ 2* 6T    69   �� *Status+6T   5(      5*      �� 5,   
   -   5         ��Name$ 
TxtProduct��5,        LoginBox#��[ 6O   $
��Left=�6q   $��31��6�   $��
175,12,0,0q�6�   $��2��6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��413��6�   ��6&   �� *
Model.Name+ �� Mode$ TwoWay=�6�   �� 5-   
   -   5        $ TxtCode��5-      #��[ 6K   $
��Left=�6m   $��30��6�   $��
480,54,0,0q�6�   $��2��6�   $
 Wrap=�6�   $	��Top=�6�   $	��108��6�   ��6#   �� *	Model.Uid+$ TwoWay=�6�   �� 5.   
   -   5         ��Name$ CheckBox��5.      $�� ��6%   $
��Left=�62   $��
180,62,0,0q�6M   $��2��6a   $	��Top=�6n    J� RenderTransformOrigin$ 0.783,-0.022&�6�   �� 5/   
   -   5         ��Name$ BtnAdd��5/      $��INSERT��6!     UserBtn#��[ 6T   $��1��6u   $
��Left=�6�   $��56��6�   $��
9.6,12,0,0q�6�   $��1��6�   $	��Top=�6�   $	��176��6�   ��62   �� *InsertCommand+6�   �� 50   
   -   5        $ 	BtnUpdate��50      $��UPDATE��6$   #��[ 6W   $��1��6x   $
��Left=�6�   $��56��6�   $��
9.6,77,0,0q�6�   $��1��6�   $	��Top=�6�   $	��176��6�   ��65   �� *UpdateCommand+6�   �� 51   
   -   5        $ 	BtnDelete��51      $��DELETE��6$   #��[ 6W   $��1��6x   $
��Left=�6�   $��56��6�   $��9.6,144,0,0q�6�   $��1��6�   $	��Top=�6�   $	��176��6�   $��2��6�   ��65   �� *DeleteCommand+6�   �� 52   
   -   5        $ BtnReset��52      $��RESET��6#   #��[ 63   $��1��6T   $
��Left=�6d   $��56��6   $��
9.6,19,0,0q�6�   $��2��6�   $	��Top=�6�   $	��176��6�   �� 53   
   -	   5        $ BtnClose��53      $��CLOSE��6#   #��[ 63   $��1��6T   $
��Left=�6d   $��56��6   $��
9.6,90,0,0q�6�   $��2��6�   $	��Top=�6�   $	��176��6�   $��2��6�   55      56      
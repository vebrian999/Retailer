   M S B A M L   `   `   `  ����G  CRetailer_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:Retailer_App.Views.InventoriesRetailer_App.Views.Inventories  5      4    .Retailer_App.Views.Inventories.InventoriesView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local,clr-namespace:Retailer_App.Views.Inventories     5      .��5	      �   � RowDefinitions  5
   
   �� 5      $	��30* �6   �� 5      $	��20* �6   �� 5      $
��160* �6   �� 5      $	��10* �6    � ColumnDefinitions 5   
   �� 5      $��5* �6   �� 5      $
��150* �6   �� 5      $	��50* �6   .+�5   
   �� -   5         ��Name$ 
BackGround��5      $��3��6$   $��UniformToFill=�68   $��4��6P   $��/Views/Inventories/BG.png��6a   � 5   
   $��1��6   $��1��6    5      �� 5      $��2* �6#   �� 5      $��4* �6#   �� 5      $��4* �6#   �� 5      $��4* �6#   �� 5      $��6* �6#   �� 5      $��1* �6#   �� 5       $��6* �6#   .+�5"      �� $
��Type��6   $
��Left=�6#      	Inv_Label#��[  6>   $��Center=�6a   $��0��6|   �� 5#      -   5         ��Name$ 	Typecombo��5#      $
��Left=�6*   $��Center=�6E   $��80��6`   $��1��6k   �� 5$      $��	Show Date��6   $��Center=�6(   #��[  6E   $��Center=�6h   $��3��6�   (  "System.Windows.Controls.DatePicker  5%      -   5          Name$ SelectDate2��5%      $��Center=�6.   $��Center=�6I   $��4��6f     5&      -   5        $ SelectDate1��5&      $��Center=�6.   $��6��6I   $��Center=�6Y   �� 5'      $��/��6   $��Center=�6    #��[  6=   $��Center=�6`   $��5��6{    J� RenderTransformOrigin$ -5.396,6.447&�6�   5(      � 5)   
   $��1��6   $��2��6   $��2��6-     5*      �� 5+      $��1* �6    �� 5,      $��5* �6    �� 5-      $��1* �6    �� 5.      $��5* �6    �� 5/      $��1* �6    �� 50      $��5* �6    �� 51      $��1* �6    �� 52      $��5* �6    �� 53      $��1* �6    �� 54      $��5* �6    �� 55      $��1* �6     57      �� 58      $��1* �6#   �� 59      $	��18* �6#   �� 5:      $��1* �6#   .+�5<      �� -   5         ��Name$ BtnShow��5<      $
��SHOW��6&     UserBtn#��[ 65   $��1��6v   $��1��6�   ��6V   �� *ShowCommand+6�   �� 5=      -   5        $ BtnNew��5=      $	��NEW��6%   #��[ 63   $��3��6s   $��1��6�   ��6T   �� *
NewCommand+6�   �� 5>      -   5        $ BtnEdit��5>      $
��EDIT��6&   #��[ 65   $��5��6v   $��1��6�   ��6V   �� *EditCommand+6�   �� 5?      -   5        $ BtnReset��5?      $��RESET��6'   #��[ 67   $��7��6y   $��1��6�   ��6X   �� *ResetCommand+6�   �� 5@      -	   5        $ BtnClose��5@      $��CLOSE��6'   #��[ 67   $��9��6y   $��1��6�   ��6X   �� *CloseCommand+6�   5A      &   System.Windows.Controls.DataGrid  5B   
   -
   5          Name$ TblData��5B      $��1��6$   $��2��64      HeadersVisibility$ Column=�6A   	   EnableRowVirtualization$	 False��6\   
   CanUserAddRows$
 False��5C         CanUserDeleteRows$ False��6.      AutoGenerateColumns$ False��5D         AlternatingRowBackground
 �����$
��Left=�5E      $	��330��62   $	��Top=�6?      Columns 5F      0  *System.Windows.Controls.DataGridTextColumn  5G      ,  &System.Windows.Controls.DataGridColumn   Header$
 CODE��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6K   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Uid+6K     5H      $
 NAME��6%   $ * 6L    63   �� *Name+6L     5I      $
 USER��6%   $ * 6P    63   �� *
UserName+6P     5J      $
 TYPE��6%   $ * 6L    63   �� *Type+6L     5K      $ STATUS��6%   $
 auto 6P    65   �� *Status+6P   5M      �� 5O   
   $��DATA INVENTORIES��6   #��[  6+   $��20(�6N   $
��Left=�6\   $��0��6w   $��1��6�   $��34��6�   $	��Top=�6�   $	��200��6�   $��2��6�   5P      5Q      
   M S B A M L   `   `   `  ����  Retailer_App)    #Retailer_App.Views.Home.LoginDialog   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  LoginDialog��5   	   $	��400��6   $	��800��6*   ���#0E2C49.��5	      �  � RowDefinitions 5
   
   �� 5      $	��20* �6   �� 5      $	��30* �6   �� 5      $	��10* �6   �� 5      $	��30* �6   �� 5      $	��10* �6   �� 5      $	��50* �6   �� 5      $	��10* �6    � ColumnDefinitions 5   
   �� 5      $	��20* �6   �� 5      $	��20* �6   �� 5      $
��110* �6   �� 5      $	��40* �6   �� 5      $
��150* �6   �� 5      $	��40* �6   �� 5      $	��40* �6   .+�5   
   �� -   5         ��Name$ BtnLogin��5      $��LOGIN��6D      LoginBtn#��[  6U   $��Right=�6w   $��Center=�6�   $	��190��6�   $��80��6�   $��2��6�   $��2��6�   $��5��6�   ��6#   �� *LoginCommand+6�   �� 5   
   -   5        $ BtnClose��5      $��CLOSE��6:   #��[  6J   $��Right=�6l   $��Center=�6�   $	��190��6�   $��80��6�   $��5��6�   $��4��6�   �� 5   
   -   5         ��Name$ TxtUser��5        LoginBox#��[ 6P   ���#24425D
�������$��	Quicksand)�6�   $��16(�6�   $
��Bold"�6�    �� TextWrapping$
 Wrap=�6�   $	��360��6�   $��36��6�   $��Right=�6�   $��Center=�6  $��Center=�6;  $��2��6V  $��1��6f  $��3��6s  ��6#   �� *Model.UserName+ �� Mode$ TwoWay=�6s  G� 5   
   -   5         G�Name$ TxtPass��5       	 PwBox#��[ 6Q   ���#24425D
�������$	��360��6�   $��36��6�   $��Right=�6�   $��Center=�6�   $��2��6�   $��3��6�   $��3��6  �� 5    
   $��Username��6     Content_Label#��[ 6#   $��Center=�6J   $	��100��6g   $��Center=�6s   $��16(�6�   $��2��6�   $��1��6�   �� 5!   
   $��Password��6   #��[ 6#   $��Center=�6J   $	��100��6g   $��Center=�6s   $��16(�6�   $��2��6�   $��3��6�   5"      5#      
   M S B A M L   `   `   `  ����  	QuanLyKho2    ,QuanLyKho.UserControlKho.UserControlCustomer   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5      �   � RowDefinitions  5   
   �� 5      6   �� 5      6   �� 5      6   .+�5   
   � -   5        $��Binding_Cus��5      $��0��6"   $��0 10 0 0q�6/   .+�5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   .+�5      � $��0��6   $	��150��6(   $
��Left=�64   $��	 20 0 0 0q�6O   .+�5      �� -   5        $��txb_NCC��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nhà Cung cấp��6-    %  !MaterialDesignFloatingHintTextBox#��[  6[   ��6�   �� *MaKH+ �� Mode$ OneWay=�5      � 5"      $��1��6   $	��150��6(   $
��Left=�64   $��	 20 0 0 0q�6O   .+�5#      �� -   5        $��
txb_TenNCC��5#      $ Tên Nhà cung cấp��60   #��[  6b   ��6�   �� *TenKH+$ OneWay=�5$      � 5(      $��2��6   $	��150��6(   $
��Left=�64   $��	 20 0 0 0q�6O   .+�5)      �� -   5        $��txb_SDT��5)      $ Số điện thoại��6-   #��[  6\   ��6�   �� *SDT+$ OneWay=�5*      � 5-      $��3��6   $	��150��6'   $
��Left=�63   $��	 20 0 0 0q�6N   .+�5.      �� -   5        $��
txb_DiaChi��5.      $ Địa chỉ��60   #��[  6Y   ��6�   �� *DiaChi+$ OneWay=�5/      � 51      $��4��6   $	��150��6'   $��30��63   $
��Left=�6?   $��
 20 5 0 -7q�6Z   .+�52      (  "System.Windows.Controls.DatePicker  -   5        $��date_ngSinh��52   !   $ 
Ngày sinh��65    ( $MaterialDesignFloatingHintDatePicker#��[ 6`      SelectedDate 6�   �� *
NgaySinh+$ OneWay=�53      � 55      $��5��6   .+�56      �� -   5        $��
btn_accept��56      $y�Hidden=�6I    $  MaterialDesignRaisedAccentButton#��[ 57      $	��100��58       � ToolTip$5 /Resource name: MaterialDesignRaisedAccentButton��59      .��6?   Chấp nhận5;      �� 5<      -   5        $��btn_accept1��5<      $y�Hidden=�6K   #��[ 5=      $	��100��5>      $5 /Resource name: MaterialDesignRaisedAccentButton��5?      .��6?   Chấp nhận5A      5C      5F      5G      � 5I   
   $��1��6   $��	10 10 0 0q�6    5J      �� 5K      $
��auto �6#   62   �� 5L      $
��auto �6#   62   �� 5M      $
��auto �6#   62   .+�5Q      � $��0��6   .+�5R      �� -	   5        $��Add_Cus��5R        MaterialDesignRaisedButton#��[ 6?   $	��100��6s   $
��Left=�6   $/ )Resource name: MaterialDesignRaisedButton��6�   .��6�   Thêm5T      5U      � 5W      $��1��6   .+�5X      �� -
   5        $��Reload��5X      #��[ 6<   $	��100��6p   $��10 0 0 0q�6|   $/ )Resource name: MaterialDesignRaisedButton��6�   .��6�   
Làm mới5Z      5[      � 5]      $��2��6   .+�5^      (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ Standard=�6,   $��8 4 8 8q�6<      CornerRadius$ 2��6N    K� ZIndex$ 1��6_   $	��700��5`   $   $��10 0 0 0q�60   
�������.��5a      �  5b      �� 5c      $
��Auto �6/   �� 5d      $��* �6/   �� 5e      $
��Auto �6/   .+�5g      �� -   5        $��btn_searchCus��5g   T     MaterialDesignToolButton#���  6!   .��5h      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]	   Kind$	 Magnify=�66   
 J� Opacity$	
 .56Q�6E   5i      �� 5j      -   5        $��tb_ncc��5j   �   $
��auto��6"   $��1��6/   $��8 0 0 0q�6?   $0 *Tìm kiếm Nhà cung cấp bằng tên...��6P   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5k   &   $��0q�6c   $	��200��5l   &   $��Center=�65   �� 5m      #���  6!   $��2��6T   .��5n        $	 
Microphone=�66   $	
 .56Q�6H   $��8 0 0 0q�6V   5o      5p      5q      5s      5t      � 5v   
   $��2��6   $��0 10 0 0q�6   .+�5w      �� -   5        $��	KhachHang��5x   �   $��Visible=�5w      ��.    alternatingStyle#��[ 5x   1    �� AlternationCount$ 2��6j   ��6�   ��  �� View 5y      �� 5z      .P�5{      �� $��Mã Nhà cung cấp��6O    �� DisplayMemberBinding 6)   �� *MaKH+6O   �� 5|      $��Tên Nhà cung cấp��6P    6)   �� *TenKH+6P   �� 5}      $��Số điện thoại��6N    6)   �� *SDT+6N   �� 5~      $��Địa Chỉ��6Q    6)   �� *DiaChi+6Q   �� 5      $��
Ngày Sinh��6S    6)   �� *
NgaySinh+5�      5�       � ContextMenu 5�      �� 5�      -   5        $��ZoneIformationList��5�       �� 	StaysOpen . 
������� J� BitmapEffect 5�      �� 5�      .@�5�      m� -   5        $��update��5�   E   
����·�$��Sửa��68   6S   m� 5�      -   5        $��remove��5�   E   
����·�$
��Xóa��68   6S   5�      5�      5�      5�      5�      
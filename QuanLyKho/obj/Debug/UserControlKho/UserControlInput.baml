   M S B A M L   `   `   `  ����  	QuanLyKho/    )QuanLyKho.UserControlKho.UserControlInput   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5	      �   � RowDefinitions  5
      �� 5   
   6   �� 5   
   6   �� 5   
   6   .+�5   
   � -   5        $��Binding_Input��5   .   $��0��6   $��0 10 0 0q�6   .+�5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   .+�5      � $��0��6   $	��150��6(   $
��Left=�64   $��	 10 0 0 0q�6O   .+�5      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã khách hàng��6    %  !MaterialDesignFloatingHintTextBox#��[  6c   ��6M   �� *MaKH+6c   5      � 5!      $��1��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�5"      �� $ Mã hàng hóa��6   #��[  6a   ��6K   �� *MaHH+6a   5#      � 5'      $��2��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�5(      �� $ Số chứng từ��6   #��[  6f   ��6K   �� *	SoChungTu+6f   5)      � 5,      $��3��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�5-      �� $ Nhày nhập��6   #��[  6c   ��6I   �� *
NgayNhap+6c   5.      � 50      $��4��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�51      �� $ Số lượng��6   #��[  6a   ��6H   �� *	SoLuong+6a   52      � 54      $��5��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�55      �� $
 Giá��6   #��[  6\   ��6C   �� *	GiaTien+6\   56      � 58      $��6��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�59      �� $ Diễn giải��6   #��[  6c   ��6I   �� *
DienGiai+6c   5:      5=      5>      � 5@   
   $��1��6   $��	10 10 0 0q�6   .+�5A   
   (  "MaterialDesignThemes.Wpf.ColorZone  $��1��6#      Mode$ Standard=�63   $��8 4 8 8q�6C      CornerRadius$ 2��6U    K� ZIndex$ 1��6f   $��0 0 16 0q�5B   $   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�5C   $   $	��700��6U   $
��Left=�6a   
�������.��5D      �  5E      �� 5F      $
��Auto �6'   �� 5G      $��* �6'   �� 5H      $
��Auto �6'   .+�5J      �� -   5        $��btn_searchInput��5J   L     MaterialDesignToolButton#���  6   .��5K      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�6.    J� Opacity$	 .56Q�6=   5L      �� 5M      -   5        $��tb_Input��5O   P   $
��auto��5M      $��1��6'   $��8 0 0 0q�67   $; 5Tìm kiếm phiếu nhập bằng số chứng từ..��6H   .  (MaterialDesignThemes.Wpf.TextFieldAssist	   DecorationVisibility$	 Hidden=�5N   &   $��0q�6c   $	��200��5O   &   $��Center=�65   6P   �� 5P      #���  6   $��2��6L   .��5Q        $ 
Microphone=�6.   $	 .56Q�6@   $��8 0 0 0q�6N   5R      5S      5T      5U      � 5V      $��2��6   .+�5W      �� -   5        $��Input��5W        alternatingStyle#��[ 6f   
���  ��
 �� AlternationCount$
 2��6�   ��6N   ��  �� View 5X      �� 5Y      .P�5Z      �� $��Mã Khách hàng��6K    �� DisplayMemberBinding 6%   �� *MaKH+6K   �� 5[      $��Mã Hàng hóa��6K    6%   �� *MaHH+6K   �� 5\      $��Số chứng từ��6P    6%   �� *	SoChungTu+6P   �� 5]      $��Ngày nhập��6O    6%   �� *
NgayNhap+6O   �� 5^      $��Số lượng��6N    6%   �� *	SoLuong+6N   �� 5_      $
��Giá��6N    6%   �� *	GiaTien+6N   �� 5`      $��Diễn giải��6O    6%   �� *
DienGiai+6O   5a      5c      5d      5f      5g      
   M S B A M L   `   `   `  ����  	QuanLyKho.    (QuanLyKho.UserControlKho.UserControlItem   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5      �   � RowDefinitions  5	   
   �� 5
      6   �� 5      6   �� 5      6   .+�5   
   � -   5        $��Binding_Goods��5   .   $��0��6   $��0 10 0 0q�6   .+�5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   .+�5      � $��0��6   $	��150��6(   $
��Left=�64   $��	 20 0 0 0q�6O   .+�5      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã hàng hóa��6    %  !MaterialDesignFloatingHintTextBox#��[  6n   ��6K   �� *MaHH+ �� Mode$ OneWay=�6n   5      � 5      $��1��6   $	��150��6'   $
��Left=�63   $��	 20 0 0 0q�6N   .+�5      �� $ Tên hàng hóa��6   #��[  6p   ��6L   �� *TenHH+$ OneWay=�6p   5      � 5"      $��2��6   $	��150��6(   $
��Left=�64   $�� 20 0 0 -10q�6O   .+�5#      ��  �� DisplayMemberPath$
 Name��5$       �� SelectedValuePath$
 Name��5%      ��5#      ��  �� Path$ 	KhachHang� �� SelectedValue 5&      �� $ TenKH��� 5'      ��6   �� $ TenKH�6<   5)      � 5,      $��3��6   $	��150��6'   $
��Left=�63   $��	 20 0 0 0q�6N   .+�5-      �� $
 Giá��6   #��[  6i   ��6C   �� *	GiaTien+$ OneWay=�6i   5.      51      52      � 54   
   $��1��6   $��	10 10 0 0q�6   .+�55      (  "MaterialDesignThemes.Wpf.ColorZone  $��1��6'      Mode$ Standard=�67   $��8 4 8 8q�6G   	   CornerRadius$	 2��6Y   
 K� ZIndex$
 1��6j   $��0 0 16 0q�56   $   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�57   $   $	��700��6U   $
��Left=�6a   
�������.��58      �  59      �� 5:      $
��Auto �6+   �� 5;      $��* �6+   �� 5<      $
��Auto �6+   .+�5>      �� -   5        $��btn_searchGoods��5>   P     MaterialDesignToolButton#���  6   .��5?      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�62    J� Opacity$	 .56Q�6A   5@      �� 5A      -   5        $��tb_Goods��5C   d   ��. -  'System.Windows.Input.KeyboardNavigation   TabIndex$ 1��5A   /   $
��auto��6O   $��1��6\   $��40,0,0,8q�6l   $* $Tìm kiếm hàng hóa bằng tên..��6~   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5B   &   $��0q�6c   $	��200��5C   &   $��Center=�65   $��2��6P   6d   �� 5D      #���  6   $��2��6P   .��5E        $ 
Microphone=�62   $	 .56Q�6D   $��8 0 0 0q�6R   5F      5G      5H      5I      � 5J   
   $��2��6   $��0 10 0 0q�6   .+�5K      �� -   5        $��Goods��5K        alternatingStyle#��[ 6r   
���  �� �� AlternationCount$ 2��6�   ��6N   �� $ OneWay=� �� View 5L      �� 5M      .P�5N      �� $��Mã Hàng hóa��6O    �� DisplayMemberBinding 6)   �� *MaHH+6O   �� 5O      $��Tên Hàng hóa��6P    6)   �� *TenHH+6P   �� 5P      $��Nhà cung cấp��6P    6)   �� *TenKH+6P   �� 5Q      $
��Giá��6R    6)   �� *	GiaTien+6R   5S      5U      5V      5X      5Y      
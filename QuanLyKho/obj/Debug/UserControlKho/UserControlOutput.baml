   M S B A M L   `   `   `  ����  	QuanLyKho0    *QuanLyKho.UserControlKho.UserControlOutput   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5      �   � RowDefinitions  5	   
   �� 5
      6   �� 5      6   �� 5      6   .+�5   
   � -   5        $��Binding_Output��5   .   $��0��6   $��0 10 0 0q�6   .+�5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   .+�5      � $��0��6   $	��150��6(   $
��Left=�64   $��10 0 0 0q�6O   .+�5      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã khách hàng��6    %  !MaterialDesignFloatingHintTextBox#��[  6c   ��6M   �� *MaKH+6c   5      � 5      $��1��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�5       �� $ Mã hàng hóa��6   #��[  6a   ��6K   �� *MaHH+6a   5!      � 5%      $��2��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�5&      �� $ Số chứng từ��6   #��[  6f   ��6K   �� *	SoChungTu+6f   5'      � 5*      $��3��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�5+      �� $ Ngày xuất��6   #��[  6c   ��6I   �� *
NgayXuat+6c   5,      � 5.      $��4��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�5/      �� $ Số lượng��6   #��[  6a   ��6H   �� *	SoLuong+6a   50      � 52      $��5��6   $	��150��6'   $
��Left=�63   $��	 10 0 0 0q�6N   .+�53      �� $
 Giá��6   #��[  6\   ��6C   �� *	GiaTien+6\   54      � 56      $��6��6   $	��150��6'   $
��Left=�63   $��	 20 0 0 0q�6N   .+�57      �� $ Diễn giải��6   #��[  6c   ��6I   �� *
DienGiai+6c   58      5;      5<      � 5>   
   $��1��6   $��	10 10 0 0q�6   .+�5?      (  "MaterialDesignThemes.Wpf.ColorZone  $��1��6'      Mode$ Standard=�67   $��8 4 8 8q�6G      CornerRadius$ 2��6Y    K� ZIndex$ 1��6j   $��0 0 16 0q�5@   $   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�5A   $   $	��700��6U   $
��Left=�6a   
�������.��5B      �  5C      �� 5D      $
��Auto �6+   �� 5E      $��* �6+   �� 5F      $
��Auto �6+   .+�5H      �� -   5        $��search��5H   P     MaterialDesignToolButton#���  6   .��5I      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�62    J� Opacity$	 .56Q�6A   	 J� RenderTransformOrigin$	 0.5,0.5&�6O   5J      �� 5K      -   5        $��	tb_search��5K      $
��auto��6/   $��1��6<   $��8 0 0 0q�6L   $9 3Tìm kiếm Phiếu xuất bằng Số chứng từ��6]   .  (MaterialDesignThemes.Wpf.TextFieldAssist
   DecorationVisibility$
 Hidden=�5L   &   $��0q�6c   $	��200��5M   &   $��Center=�65   �� 5N      #���  6   $��2��6P   .��5O        $ 
Microphone=�62   $	 .56Q�6D   $��8 0 0 0q�6R   5P      5Q      5R      5S      � 5T   
   $��2��6    5U      �� 5V      $
��245* �6#   �� 5W      $
��113* �6#   .+�5Y      �� -   5        $��Output��5Y      $��2��6h     alternatingStyle#��[ 6|   
���  �� �� AlternationCount$ 2��6�   ��6P   ��  �� View 5Z      �� 5[      .P�5\      �� $��Mã Khách hàng��6O    �� DisplayMemberBinding 6)   �� *MaKH+6O   �� 5]      $��Mã Hàng hóa��6O    6)   �� *MaHH+6O   �� 5^      $��Số chứng từ��6T    6)   �� *	SoChungTu+6T   �� 5_      $��Ngày xuất��6S    6)   �� *
NgayXuat+6S   �� 5`      $��Số lượng��6R    6)   �� *	SoLuong+6R   �� 5a      $
��Giá��6R    6)   �� *	GiaTien+6R   �� 5b      $��Diễn giải��6S    6)   �� *
DienGiai+6S   5c      5e      5f      5h      5i      
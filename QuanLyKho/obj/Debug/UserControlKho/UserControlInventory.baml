   M S B A M L   `   `   `  ����  	QuanLyKho3    -QuanLyKho.UserControlKho.UserControlInventory   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5      �   � RowDefinitions  5	   
   �� 5
      6   �� 5      6   �� 5      6   .+�5   
   � -   5        $��Binding_Inv��5   .   $��0��6   $��0 10 0 0q�6   .+�5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   �� 5      6)   .+�5      � $��0��6   $	��150��6(   $
��Left=�64   $��	 20 0 0 0q�6O   .+�5      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã hàng hóa��6    %  !MaterialDesignFloatingHintTextBox#��[  6n   ��6K   �� *MaHH+ �� Mode$ OneWay=�6n   5      � 5      $��1��6   $	��150��6'   $
��Left=�63   $��	 20 0 0 0q�6N   .+�5      �� $ Tên hàng hóa��6   #��[  6p   ��6L   �� *TenHH+$ OneWay=�6p   5      � 5#      $��2��6   $	��150��6'   $
��Left=�63   $��	 20 0 0 0q�6N   .+�5$      �� $ Số lượng tồn��6   #��[  6p   ��6L   �� *SLTon+$ OneWay=�6p   5%      � 5(      $��3��6   $	��150��6'   $
��Left=�63   $��	 20 0 0 0q�6N   .+�5)      �� $
 Giá��6   #��[  6i   ��6C   �� *	GiaTien+$ OneWay=�6i   5*      5-      5.      � 50   
   $��1��6   $��	10 10 0 0q�6   .+�51      (  "MaterialDesignThemes.Wpf.ColorZone  $��1��6'      Mode$ Standard=�67   $��8 4 8 8q�6G      CornerRadius$ 2��6Y    K� ZIndex$ 1��6j   $��0 0 16 0q�52   $   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�53   $   $	��700��6U   $
��Left=�6a   
�������.��54      �  55      �� 56      $
��Auto �6+   �� 57      $��* �6+   �� 58      $
��Auto �6+   .+�5:      �� -   5        $��btn_searchInventory��5:   P     MaterialDesignToolButton#���  6   .��5;      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�62   	 J� Opacity$		 .56Q�6A   5<      �� 5=      -   5        $��tb_SLTon��5=   �   $
��auto��6   $��1��6+   $��8 0 0 0q�6;   $8 2Tìm kiếm số lượng tồn của hàng hóa..��6L   .  (MaterialDesignThemes.Wpf.TextFieldAssist
   DecorationVisibility$
 Hidden=�5>   &   $��0q�6c   $	��200��5?   &   $��Center=�65   �� 5@      #���  6   $��2��6P   .��5A        $ 
Microphone=�62   $		 .56Q�6D   $��8 0 0 0q�6R   5B      5C      5D      5E      � 5F   
   $��2��6   .+�5G      �� -   5        $��	Inventory��5G        alternatingStyle#��[ 6o   
���  �� �� AlternationCount$ 2��6�   ��6W   ��  �� View 5H      �� 5I      .P�5J      �� $��Mã Hàng hóa��6O    �� DisplayMemberBinding 6)   �� *MaHH+6O   �� 5K      $��Tên hàng hóa��6P    6)   �� *TenHH+6P   �� 5L      $��Số lượng tồn��6P    6)   �� *SLTon+6P   �� 5M      $
��Giá��6R    6)   �� *	GiaTien+6R   5O      5Q      5R      5T      5U      
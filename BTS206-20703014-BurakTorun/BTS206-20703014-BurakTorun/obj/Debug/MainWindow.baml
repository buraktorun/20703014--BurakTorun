   M S B A M L   `   `   `  ����U  QBTS206-20703014-BurakTorun, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BTS206_20703014_BurakTorunBTS206_20703014_BurakTorun  5   	   +    %BTS206_20703014_BurakTorun.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:BTS206_20703014_BurakTorun     5   	   -   5          � Title$   BİLGİSAYAR PARÇA SATIMI��5   	   $	��519��6)   $��618.75��66    � Icon$ pc-monitor.png��6\   ��5	      �� 5
   
    �� ImageSource$ 	ödev.jpg��6   .��5      � -   5        $
��grd1��5       J� RenderTransformOrigin$ 0.488,0.443&�6   .+�5   
   �� $
��Left=�6   $	��611��60   .+�5      �� $$�� Ürün Adına Göre Filtrele ��6   $��10,10,10,10q�6;   $��88��6P   $��Century Gothic)�6\   
�������$��Center=�6�   $��Stretch=�6�   ���	#FFF0301D$
��Bold"�6�   .��5      ]� $��Center=�6   $��	10,0,10,0q�67   .+�5      �� $��64��6   $��Century Gothic)�6'   
�������$
��Bold"�6V   .��6h   Ürün Adı5      �� 5      -   5        $��txtAra��5      $��22��6,    �� TextWrapping$
 Wrap=�68   $	��395��6M   $��Center=�6�   ���	#FFF0301D$��14(�6�   5      5      &   System.Windows.Controls.DataGrid  5      -   5        $��dtgProducts��5      $��	10,0,10,0q�6*      SelectionMode$ Single=�6=      AlternatingRowBackground �	#FFF0301D �� AlternationCount$ 0��6y   $	��158��6�   $��Center=�6�   ���	#FF353F4B
���   �$��Century Gothic)�6  $��14(�63  $
��Bold"�6A     RowBackground
 �����$	 �� IsSynchronizedWithCurrentItem$	 FalseY�6�  
   AutoGenerateColumns
 .     HorizontalGridLinesBrush
 �   �   VerticalGridLinesBrush
 �   ���6i  Z�    Columns 5       0  *System.Windows.Controls.DataGridTextColumn  5!      ,  &System.Windows.Controls.DataGridColumn   Header$     Sıra No��6I      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6w      
FontFamily$ Century Gothic)�6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *Id+6�     5"      $     Ürün Adı��6I    . $	 120 6w   $ Century Gothic)�6�    6)   �� *UrunAd+6�     5#      $     Birim Fiyatı��6I    . $	 120 6w   $ Century Gothic)�6�    6)   �� *
UrunFıyat+6�     5$      $     Stok Miktarı��6I    . $	 120 6w   $ Century Gothic)�6�    6)   �� *UrunMıktar+6�     5%      $ 	    Marka��6I    . $	 120 6w   $ Century Gothic)�6�    6)   �� *Umarka+6�   5'      5)      �� 5-   
   $
��Left=�6   $
��Wrap=�6/   $��Id��6C   $	��Top=�6M   $��
54,290,0,0q�6e   $��Century Gothic)�6y   
�������$
��Bold"�6�   $��15��6�   $��12��6�   �� 5.   
   $
��Left=�6   $
��Wrap=�6/   $��Ürün Adı��6C   $	��Top=�6S   $��
43,376,0,0q�6k   $��Century Gothic)�6   
�������$
��Bold"�6�   $��16��6�   $��51��6�   �� 5/   
   $
��Left=�6   $
��Wrap=�6/   $��Birim Fiyatı��6C   $	��Top=�6W   $��272,290,0,0q�6o   $��Century Gothic)�6�   
�������$
��Bold"�6�   $��15��6�   $��64��6�   �� 50   
   $
��Left=�6   $
��Wrap=�6/   $��Stok Miktarı��6C   $	��Top=�6W   $��269,379,0,0q�6o   $��Century Gothic)�6�   
�������$
��Bold"�6�   $��16��6�   $��70��6�   �� 51   
   $
��Left=�6   $
��Wrap=�6/   $��Marka��6C   $	��Top=�6P   $��385,336,0,0q�6h   $��Century Gothic)�6}   
�������$
��Bold"�6�   $��16��6�   $��39��6�   �� 55   
   -   5        $��txtId��55      {�.  $
��Left=�61   $��25��6L   $
 Wrap=�6X   $	��Top=�6�   $	��126��6�   $��109,284,0,0q�6�   $��Center=�6�   ���	#FFF0301D$��Century Gothic)�6�   ��6l   �� *Id+6�   �� 56   
   -   5        $��	txtUrunAd��56      $
��Left=�61   $��25��6L   $
 Wrap=�6X   $	��Top=�6�   $	��126��6�   $��109,374,0,0q�6�   $��Center=�6�    �� SelectionBrush �	#FF3B576E���	#FFF0301D$��Century Gothic)�6  $��13(�63  ��6l   �� *UrunAd+63  �� 57   
   -   5        $��txtUrunFıyat��57      $
��Left=�61   $��23��6L   $
 Wrap=�6X   $	��Top=�6�   $	��126��6�   $��357,286,0,0q�6�   $��Center=�6�   ���	#FFF0301D$��Century Gothic)�6�   $��13(�6  ��6l   �� *
UrunFıyat+6  �� 58   
   -   5        $��txtUrunMıktar��58      $
��Left=�61   $��25��6L   $
 Wrap=�6X   $	��Top=�6�   $	��126��6�   $��357,376,0,0q�6�   $��Center=�6�   ���	#FFF0301D$��Century Gothic)�6�   $��13(�6  ��6l   �� *UrunMıktar+6  �� 5<   
   -	   5        $��txtUrunMarka��5<      $
��Left=�6?   $	��Top=�6Z   $	��131��6r   $��434,332,0,0q�6~   $��Century Gothic)�6�   
���   �$��24��6�    �� Text 6'   �� *Umarka+.@�5=      �� $
��Asus��6   6,   �� 5>      $��Razer��6   6-   �� 5?      $��Intel��6   6-   �� 5@      $��Samsung��6   6/   �� 5A      $	��Amd��6   6+   �� 5B      $
��Msı��6   6+   �� 5C      $��Corsair��6   6/   5D      �� 5H   
   -
   5        $��btnEkle��5H      $
��Ekle��6$   $
��Left=�67   $	��Top=�6R   $��82��6j   $��
92,431,0,0q�6u   $��34��6�   $��Century Gothic)�6�   $��14(�6�   
����������	#FFF0301D
���   �$��Center=�6  $��Center=�67  $
��Bold"�6Y  �� 5I   
   -   5        $��
btnTemizle��5I      $��Temizle��6$   $
��Left=�67   $	��Top=�6R   $��82��6j   $��209,431,0,0q�6u   $��34��6�   $��Century Gothic)�6�   $��14(�6�   
����������	#FFF0301D
���   �$��Center=�6  $��Center=�6;  $
��Bold"�6]  �� 5J   
   -   5        $��btnGuncelle��5J      $��	Güncelle��6$   $
��Left=�67   $	��Top=�6R   $��82��6j   $��328,431,0,0q�6u   $��34��6�   $��Century Gothic)�6�   $��14(�6�   
����������	#FFF0301D
���   �$��Center=�6  $��Center=�6<  $
��Bold"�6^  �� 5K   
   -   5        $��btnSil��5K      $	��Sil��6$   $
��Left=�67   $	��Top=�6R   $��82��6j   $��446,431,0,0q�6u   $��34��6�   $��Century Gothic)�6�   $��14(�6�   
����������	#FFF0301D
���   �$��Center=�6  $��Center=�67  $
��Bold"�6Y  5M      5N      
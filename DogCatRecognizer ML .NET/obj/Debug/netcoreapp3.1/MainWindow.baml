   M S B A M L   `   `   `  ����S  ODogCatRecognizer ML .NET, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:DogCatRecognizer_ML_.NETDogCatRecognizer_ML_.NET  5   	   )    #DogCatRecognizer_ML_.NET.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:DogCatRecognizer_ML_.NET     5   	     � Title$  
MainWindow��5   	   $	��521��6   $	��800��6)   .��5	      � $	��502��6    � ColumnDefinitions 5
   
   �� 5      $
��661* �6   6.   �� 5      $
��139* �6   6.    � RowDefinitions 5   
   �� 5      $	��35* �6   6+   �� 5      $
��207* �6   6,   �� 5      $��9* �6   6*   .+�5   
   �� -   5         ��Name$ button��5      $
��Left=�6"   $��10,0,0,0q�6=   $��Center=�6O   $��20��6   $	��109��6�   $��1��6�   .��6�   	Analyze !5      �� 5   
   -   5         ��Name$ urlText��5      $
��Left=�6#   $��30,0,0,0q�6>   $�� ��6P    �� TextWrapping$
 Wrap=�6X   $��Center=�6l   $	��548��6�   $��20��6�   �� 5   
   -   5         ��Name$ image��5      $
��Left=�6   $	��301��6:   $��	30,10,0,0q�6G   $	��Top=�6Z   $	��548��6r    J� RenderTransformOrigin$ 	0.53,0.48&�6~   $��1��6�   �� 5   
   -   5         ��Name$ result��5      $��15(�6$   $
��Left=�63   $��
30,350,0,0q�6N   $��1��6b   $!��Provide me image to analyze��6o   $
��Wrap=�6�   $	��Top=�6�   $��54��6�   $	��500��6�   �� 5   
   -   5        $
 info��5      $
��Left=�6"   $��44,4,0,0q�6=   $'��!Paste here cat or dog image url !��6O   $
��Wrap=�6x   $	��Top=�6�   $��16��6�   $	��534��6�   5      5      
   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	         WpfApp1.User   	localuser   Name��%+   &	          5
   
   $ nothing��6'   5      .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $	��100 �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $��50 �6   .+�5   
   � .+�5      �� -   5        $��lbUser��5      $	��200��6$   $	��100��60    �� DisplayMemberPath$
 Name��6=   6X   5      � 5   
   $��1��6   .+�5      �� -   5        $	��Add��5      .��62   
add user6<   �� 5      -   5        $��Delete��5      .��68   delete user6E   5      � 5   
   $��1��6   $��1��6$   .+�5      �� -   5        $
��btHW��5   !   $��10q�6   .��6@   
Hallo Welt6L   �� 5       -   5        $
��btAW��5    !   $��10q�6   .��6@   Update6H   5!      �� 5"   
   $��2��6   $��2��6%   .+�5#      �� -   5        $��tbTest��5#       �� AcceptsReturn . ��6$   �� *Title+ �� UpdateSourceTrigger$ Explicit=�6Y   �� 5$      -   5        $��
tblockTest��5$      $��50��6*   5&      5'      5(      
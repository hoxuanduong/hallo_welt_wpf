   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   B >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1 5   	      WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   9system&clr-namespace:System;assembly=mscorlib     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5       �� MergedDictionaries �� Source   	ListBoxDT  WpfApp1.Person 
 MyUser   Name
   Age �� Color  recolor �� 
TargetType  MyButtonStyle �� Property	 �� Value
 �� Triggers P� Property P� Value  MyButtonStyle2 �� 
TargetType �Name �� Triggers �� 
TargetName �� BasedOn  	TitleText �� 
StartPoint �� EndPoint � Offset � Color�� 5   
    5	      �� 5
      $ Dictionary1.xaml?�6%   %H  &	        &	 Y     &	 �     &	 �     &	 r    &	 �    7���� 5      .R�5      �� .+�5      �� ��6    �� *Name+5      5        5      $	 Joe��6*   $ 20��65   �� 5      $	 Red��6   6*   �� 5      " ��6   .�5      ��  � ��
	 �  ��6=   �� 5       � ��
	 �����6?   
 5      P� 5       � �� . . �5      ��  � ��
	 ��  �6F   5      5      �� 5      " ��6   .�5      ��  � ��	 5      �� 5       " ��6*   .R�5!      � $ GridCT��6#   .+�5"      �� 
���**��$��2q�69   $��30��6M   ._�5#   "   �� $��Center=�63   $��Center=�6P   5$      5&       5'      P� 5(   "    � �� . . �5)   &   �� $ GridCT��6-    � ��
	 �����6W   5*   #   5,      5/      50      �� 51      8   " ��6B   .�52      ��  � ��$	 26(�6-   �� 53       � ��	 54      �� 55      $ 0.5,0&�6.   $ 0.5,1&�6A   ��57   "   � $	 0.0Q�6/   $ #90DDDD��6<   � 58   "   $	 1.0Q�6/   $ #5BFFFF��6<   5:      5<      5=      5?      .��5C      � .+�5D   
   �� .+�5F      �� -   5        $��Hello��5F      $��Hello��6"     	SCB_Dict1#��[ 62   #��[ 6Z   6�   �� 5G      -   5        $��MyTextBlock��5G      $��Hallo��6+   #��[ 68   �� 5H      -   5        $��DisplayImage��5H      $
��Auto��6(   $	��100��65   �� 5I      -   5        $��	MyTextBox��5I      �� 5J      -   5        $��BTDispatcher��5J      $��Test Dispatcher��6)   #��[ 6^   �� 5K      -   5        $��TBDispatcher��5K      5L      5N      5O      
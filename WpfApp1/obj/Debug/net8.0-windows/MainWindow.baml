   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ EmployeeDataGrid��5
         AutoGenerateColumns$ False��6-      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+  5      $
 Name��6%    63   �� *Name+  5      $ Position��6%    67   �� *
Position+4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Photo��6)      CellTemplate 5      �� 5      .R�5      �� $��50��6A   $��50��6L   ��6$   �� *	PhotoPath+6L   5      5      5      �� 5   
   -   5         ��Name$ NameTextBox��5      $	��200��6'   $��25��63   $��
10,210,0,0q�6?   $��Имя��6S   �� 5   
   -   5        $ PositionTextBox��5      $	��200��6+   $��25��67   $��
10,240,0,0q�6C   $��Должность��6W   �� 5   
   -   5        $��Добавить��5      $	��100��6$   $��30��60   $��220,210,0,0q�6<   6Q   �� 5   
   -   5        $��Удалить��5      $	��100��6#   $��30��6/   $��330,210,0,0q�6;   6P   �� 5   
   -   5        $ ��Редактировать��5      $	��100��6)   $��30��65   $��440,210,0,0q�6A   6V   �� 5   
   -   5        $0��*Добавить 10 организаций��5      $	��150��63   $��30��6?   $��550,210,0,0q�6K   6`   �� 5   
   -   5        $ SearchTextBox��5      $	��200��6)   $��25��65   $��
10,270,0,0q�6A   $��Поиск...��6U   �� 5    
   -	   5        $��
Поиск��5       $	��100��6!   $��30��6-   $��220,270,0,0q�69   6N   �� 5"   
   -
   5         ��Name$ LogTextBlock��5"      $��
10,310,0,0q�6*   $
��Wrap=�6>   5#      5$      
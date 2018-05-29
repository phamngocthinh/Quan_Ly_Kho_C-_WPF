using QuanLyKho.UserControlKho;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanLyKho
{
    /// <summary>
    /// Interaction logic for ManagerWindow.xaml
    /// </summary>
    
    public partial class ManagerWindow : Window
    {
        private UserControlBarUC ManagerBar = new UserControlBarUC();
        private Button curr = null;
        public ManagerWindow()
        {
            InitializeComponent();
          
            MenuManager.Children.Add(ManagerBar);
            ManagerBar.PropertyChanged += ManagerBar_PropertyChanged;


        }

        private void ManagerBar_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            switch (ManagerBar.TypeUC)
            {
                case TypeUCBar.close:
                    this.Close(); break;
                case TypeUCBar.drog:
                    this.DragMove(); break;
                case TypeUCBar.maximize:
                    this.WindowState = (this.WindowState == WindowState.Normal) ? WindowState.Maximized : WindowState.Normal;
                    break;
                case TypeUCBar.minimize:
                    this.WindowState = WindowState.Minimized; break;
            }
        }
        UserControlCustomer UCCustomer = new UserControlCustomer();
        UserControlItem UCIteam = new UserControlItem();
        UserControlInput UCInput = new UserControlInput();
        UserControlOutput UCOutput = new UserControlOutput();
        UserControlInventory UCInventory = new UserControlInventory();
        UserControlReceivedDocket UCReceivedRocket = new UserControlReceivedDocket();
        UserControlDeliverySlip UCDeliverySlip = new UserControlDeliverySlip();
       
        
    //event nhấp vào nhà cung cấp
    private void btn_Cus_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCCustomer);
            if(curr != null)
                 curr.Background = Brushes.Silver;
            curr = btn_Cus;
            curr.Background = Brushes.SkyBlue;

        }

        //event nhấp vào hàng hóa
        private void btn_Item_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCIteam);
            if (curr != null)
                curr.Background = Brushes.Silver;
            curr = btn_Item;
            curr.Background = Brushes.SkyBlue;
         
        }

        private void btn_Input_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCInput);
            if (curr != null)
                curr.Background = Brushes.Silver;
            curr = btn_Input;
            curr.Background = Brushes.SkyBlue;

        }

       

        private void btn_Output_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCOutput);
            if (curr != null)
                curr.Background = Brushes.Silver;
            curr = btn_Output;
            curr.Background = Brushes.SkyBlue;


        }

        private void btn_Inventory_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCInventory);
            if (curr != null)
                curr.Background = Brushes.Silver;
            curr = btn_Inventory;
            curr.Background = Brushes.SkyBlue;

        }

        private void btn_ReceivedDocket_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCReceivedRocket);
            if (curr != null)
                curr.Background = Brushes.Silver;
            curr = btn_ReceivedDocket;
            curr.Background = Brushes.SkyBlue;

        }

        private void btn_DeliverySlip_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCDeliverySlip);
            if (curr != null)
                curr.Background = Brushes.Silver;
            curr = btn_DeliverySlip;
            curr.Background = Brushes.SkyBlue;


        }

        private void ReMoveChildrenOfGrid(Grid grid)
        {
            for (int i = grid.Children.Count - 1; i >= 0; i--)
            {
                grid.Children.Remove(grid.Children[i]);
            }
        }

    }
   
}
    

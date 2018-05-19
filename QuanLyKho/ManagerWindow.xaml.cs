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
            
            
        }

        //event nhấp vào hàng hóa
        private void btn_Item_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCIteam);
        }

        private void btn_Input_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCInput);
        }

        private void ReMoveChildrenOfGrid(Grid grid)
        {
            for(int i= grid.Children.Count-1;i>=0; i--)
            {
                grid.Children.Remove(grid.Children[i]);
            }
        }

        private void ReMoveBackgroudOfButton()
        {

        }

        private void btn_Output_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCOutput);
            
        }

        private void btn_Inventory_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCInventory);
        }

        private void btn_ReceivedDocket_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCReceivedRocket);
        }

        private void btn_DeliverySlip_Click(object sender, RoutedEventArgs e)
        {
            ReMoveChildrenOfGrid(MainArea);
            MainArea.Children.Add(UCDeliverySlip);

        }

        
    }
   
}
    

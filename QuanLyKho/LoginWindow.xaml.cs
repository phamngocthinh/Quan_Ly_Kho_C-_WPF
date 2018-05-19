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
using QuanLyKho.UserControlKho;
namespace QuanLyKho
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        private UserControlBarUC xxx = new UserControlBarUC();
        public LoginWindow()
        {
            InitializeComponent();
            menubar.Children.Add(xxx);
            xxx.PropertyChanged += Xxx_PropertyChanged;

        }

        private void Xxx_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            switch (xxx.TypeUC)
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

        private void RepeatButton_Click(object sender, RoutedEventArgs e)
        {
            new ManagerWindow().Show();
            this.Close();
        }

    }
}

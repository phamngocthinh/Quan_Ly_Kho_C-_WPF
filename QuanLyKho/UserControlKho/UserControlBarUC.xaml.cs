using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKho.UserControlKho
{
    /// <summary>
    /// Interaction logic for UserControlBarUC.xaml
    /// </summary>
    public partial class UserControlBarUC : UserControl, INotifyPropertyChanged
    {
        private TypeUCBar typeUC = TypeUCBar._default;
        public event PropertyChangedEventHandler PropertyChanged;

        public TypeUCBar TypeUC
        {
            get { return typeUC; }
            set
            {
                typeUC = value;
                OnPropertyChanged(typeUC);
            }
        }
        public UserControlBarUC()
        {
            InitializeComponent();
        }
        public void OnPropertyChanged(TypeUCBar t)
        {
            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(t.ToString()));
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            TypeUC = TypeUCBar.close;

        }



        private void ColorZone_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            TypeUC = TypeUCBar.drog;
        }


        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            TypeUC = TypeUCBar.maximize;

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            TypeUC = TypeUCBar.minimize;
        }
    }

    public enum TypeUCBar{
        close = 0 ,
        maximize = 1,
        minimize = 2,
        _default = 3,
        drog =4
    }
}

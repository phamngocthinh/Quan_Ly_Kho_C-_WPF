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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanLyKho.UserControlKho
{
    /// <summary>
    /// Interaction logic for UserControlReceivedDocket.xaml
    /// </summary>
    public partial class UserControlReceivedDocket : UserControl
    {
  
        public UserControlReceivedDocket()
        {
            InitializeComponent();
            LoadDuLieu();
        }

        private void accept_Click(object sender, RoutedEventArgs e)
        {
           
            DateTime? selectedDate2 = FinishDate.SelectedDate;
         
            DateTime? selectedDate1 = BeginDate.SelectedDate;

            QLKhoEntities Loc = new QLKhoEntities();
            
            var t= Loc.sp_XuatBangNhapHang(selectedDate1, selectedDate2);
            ReceivedDocket.ItemsSource = t;
        } 

        private void LoadDuLieu()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                ReceivedDocket.ItemsSource = db.PHIEUNHAPHANGs.ToList<PHIEUNHAPHANG>();
            }
        }


        
    }
}

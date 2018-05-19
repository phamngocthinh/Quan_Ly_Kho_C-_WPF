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
    /// Interaction logic for UserControlDeliverySlip.xaml
    /// </summary>
    public partial class UserControlDeliverySlip : UserControl
    {
        public UserControlDeliverySlip()
        {
            InitializeComponent();
            LoadDuLieu();
        }

        private void accept_Click(object sender, RoutedEventArgs e)
        {

            DateTime? selectedDate2 = FinishDate.SelectedDate;

            DateTime? selectedDate1 = BeginDate.SelectedDate;

            QLKhoEntities Loc = new QLKhoEntities();

            var t = Loc.sp_XuatBangXuatHang(selectedDate1, selectedDate2);
            DeliverySlip.ItemsSource = t;
        }

        private void LoadDuLieu()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                DeliverySlip.ItemsSource = db.PHIEUXUATHANGs.ToList<PHIEUXUATHANG>();
            }
        }
    }
}

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
    /// Interaction logic for UserControlCustomer.xaml
    /// </summary>
    public partial class UserControlCustomer : UserControl
    {
        public UserControlCustomer()
        {
            InitializeComponent();
            LoadDuLieu();
        }

        private void LoadDuLieu()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                KhachHang.ItemsSource = db.KHACHHANGs.ToList<KHACHHANG>();
            }
        }

        private void btn_searchCus_Click(object sender, RoutedEventArgs e)
        {
            string xx = tb_ncc.Text;
            QLKhoEntities search = new QLKhoEntities();
            KhachHang.ItemsSource = search.sp_TimKiemNhaCungCapTheoTenNhaCungCap(xx);
        }
    }
}

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
    /// Interaction logic for UserControlInput.xaml
    /// </summary>
    public partial class UserControlInput : UserControl
    {
        public UserControlInput()
        {
            InitializeComponent();
            LoadDuLieu();
        }

        private void LoadDuLieu()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                Input.ItemsSource = db.PHIEUNHAPHANGs.ToList<PHIEUNHAPHANG>();
            }
        }

        private void btn_searchInput_Click(object sender, RoutedEventArgs e)
        {
            string xx = tb_Input.Text;
            QLKhoEntities search = new QLKhoEntities();
            Input.ItemsSource = search.sp_TimKiemPhieuNhapTheoSoChungTu(xx);
        }
    }
}

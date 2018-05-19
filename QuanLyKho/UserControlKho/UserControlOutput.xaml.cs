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
using System.Data.SqlClient;

namespace QuanLyKho.UserControlKho
{
    /// <summary>
    /// Interaction logic for UserControlOutput.xaml
    /// </summary>
    public partial class UserControlOutput : UserControl
    {
        public UserControlOutput()
        {
            InitializeComponent();
            LoadDuLieu();
        }
        List<Object> c = new List<object>();
        private void LoadDuLieu()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                Output.ItemsSource = db.PHIEUXUATHANGs.ToList<PHIEUXUATHANG>();
            }
        }

        private void search_Click(object sender, RoutedEventArgs e)
        {
            string xx = tb_search.Text;

            QLKhoEntities search = new QLKhoEntities();
            //c.Add(search.sp_TimKiemPhieuXuatTheoSoChungTu(xx));
            Output.ItemsSource = search.sp_TimKiemPhieuXuatTheoSoChungTu(xx);
            if (xx == null)
                Output.ItemsSource = search.PHIEUXUATHANGs.ToList<PHIEUXUATHANG>();

        }

        
    }
}

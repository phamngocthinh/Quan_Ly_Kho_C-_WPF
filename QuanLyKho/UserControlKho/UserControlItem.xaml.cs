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
    /// Interaction logic for UserControlItem.xaml
    /// </summary>
    public partial class UserControlItem : UserControl
    {
        public UserControlItem()
        {
            InitializeComponent();
            //LoadDuLieu();
            ShowHangHoa();
        }
        private void LoadDuLieu()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                HangHoa.ItemsSource = db.HANGHOAs.ToList<HANGHOA>();
            }
        }

        private void ShowHangHoa()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                var details = (from order in db.HANGHOAs
                               join xxx in db.PHIEUNHAPHANGs on order.MaHH equals xxx.MaHH
                               join cust in db.KHACHHANGs on xxx.MaKH equals cust.MaKH
                               
                               select new
                               {
                                   MaHH = order.MaHH,
                                   TenHH = order.TenHH,
                                   TenKH= cust.TenKH,
                                   GiaTien= xxx.GiaTien,
                               }).ToList();
                HangHoa.ItemsSource = details;
            }
        }

        private void btn_searchGoods_Click(object sender, RoutedEventArgs e)
        {
            string xx = tb_Goods.Text;
            QLKhoEntities search = new QLKhoEntities();
            QLKhoEntities db = new QLKhoEntities();
            var c = search.sp_TimKiemHangHoaTheoTenHH(xx);
            var details = (from order in c
                           join xxx in db.PHIEUNHAPHANGs on order.MaHH equals xxx.MaHH
                           join cust in db.KHACHHANGs on xxx.MaKH equals cust.MaKH

                           select new
                           {
                               MaHH = order.MaHH,
                               TenHH = order.TenHH,
                               TenKH = cust.TenKH,
                               GiaTien = xxx.GiaTien,

                           }).ToList();
            HangHoa.ItemsSource = details;
        }
    }
}

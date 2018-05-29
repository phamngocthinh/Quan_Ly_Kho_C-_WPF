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
    /// Interaction logic for UserControlInventory.xaml
    /// </summary>
    public partial class UserControlInventory : UserControl
    {
        public UserControlInventory()
        {
            InitializeComponent();
            //LoadDuLieu();
            ShowTonDauKi();
        }

        private void ShowTonDauKi()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                var details = (from order in db.HANGHOAs
                               join cust in db.TONDAUKIs
                               on order.MaHH equals cust.MaHH
                               select new
                               {
                                   MaHH= order.MaHH,
                                   TenHH= order.TenHH,
                                   SLTon= cust.SLTon,
                                   GiaTien= cust.GiaTien,
                               }).ToList();
                Inventory.ItemsSource = details;
            }
            
        }
        private void LoadDuLieu()
        {
            using (QLKhoEntities db = new QLKhoEntities())
            {
                Inventory.ItemsSource = db.TONDAUKIs.ToList<TONDAUKI>();

                
            }
        }

        //private void btn_searchInventory_Click(object sender, RoutedEventArgs e)
        //{
        //    string tenhhh = tb_SLTon.Text;
        //    QLKhoEntities context = new QLKhoEntities();
        //    QLKhoEntities search = new QLKhoEntities();
        //    var mahhh = from b in context.HANGHOAs
        //                    where b.TenHH == tenhhh
        //                    select b.MaHH;
        //    var d = search.sp_TimSoLuongTonCuaHangHoa(mahhh.ToString());
        //    var details = (from order in context.HANGHOAs
        //                   join cust in d
        //                   on order.MaHH equals cust.MaHH
        //                   select new
        //                   {
        //                       MaHH = order.MaHH,
        //                       TenHH = order.TenHH,
        //                       SLTon = cust.SLTon,
        //                       GiaTien = cust.GiaTien,
        //                       }).ToList();
        //    Inventory.ItemsSource = details;  
        //}

        private void btn_searchInventory_Click(object sender, RoutedEventArgs e)
        {
            string tenhhh = tb_SLTon.Text;

            QLKhoEntities search = new QLKhoEntities();

            Inventory.ItemsSource = search.sp_TimKiemSoLuongTonCuaHangHoaTheoTenHH(tenhhh);
        }

        private void Inventory_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            object t = Inventory.SelectedItem;
            Binding_Inv.DataContext = t;
        }
    }
}

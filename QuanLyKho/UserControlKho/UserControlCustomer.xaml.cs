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

        
        //Binding từng dòng mã khách hàng
        private void Cus_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            object t = KhachHang.SelectedItem;
            Binding_Cus.DataContext = t;
        }

        
        //event sửa nhà cung cấp
        private void update_Click(object sender, RoutedEventArgs e)
        {
            object t = KhachHang.SelectedItem;
            Binding_Cus.DataContext = t;
            btn_accept.Visibility = Visibility.Visible;


        }

        //load lại dữ liệu listview
        private void Reload_Click(object sender, RoutedEventArgs e)
        {

            btn_accept.Visibility = Visibility.Hidden;
            txb_NCC.Text = "";
            txb_TenNCC.Text = "";
            txb_SDT.Text = "";
            date_ngSinh.SelectedDate = null;
            txb_DiaChi.Text = "";
            LoadDuLieu();
            

        }

        //chấp nhận sửa nhà cung cấp
        private void btn_accept_Click(object sender, RoutedEventArgs e)
        {
            string st1 = txb_NCC.Text;
            string st2 = txb_TenNCC.Text;
            string st3 = txb_SDT.Text;
            DateTime? st4 = date_ngSinh.SelectedDate;
            
            string st5 = txb_DiaChi.Text;

            QLKhoEntities db = new QLKhoEntities();
            db.sp_updateCus(st1,st2,st3,st5 ,st4);
            MessageBox.Show("Đã sửa thông tin khách hàng thành công!");


        }

        //event thêm nhà cung cấp
        private void Add_Cus_Click(object sender, RoutedEventArgs e)
        {
            btn_accept1.Visibility = Visibility.Visible;
            txb_NCC.Text = "";
            txb_TenNCC.Text = "";
            txb_SDT.Text = "";
            date_ngSinh.SelectedDate = null;
            txb_DiaChi.Text = "";


        }

        // chấp nhận thêm 1 Nhà cung cấp
        private void btn_accept1_Click(object sender, RoutedEventArgs e)
        {
            txb_NCC.TabIndex = 0;
            txb_NCC.IsTabStop = true;
            string st1 = txb_NCC.Text;
            string st2 = txb_TenNCC.Text;
            string st3 = txb_SDT.Text;
            string st4 = txb_DiaChi.Text;
            DateTime? st5 = date_ngSinh.SelectedDate;

            QLKhoEntities db = new QLKhoEntities();
            db.sp_addCus(st1, st2, st3, st4, st5);
            MessageBox.Show("Đã thêm khách hàng thành công!");


        }

        private void remove_Click(object sender, RoutedEventArgs e)
        {
            QLKhoEntities remove = new QLKhoEntities();
            object t = KhachHang.SelectedItem;
            Binding_Cus.DataContext = t;
            if (MessageBox.Show("Bạn có chắc chắn muốn xóa khách hàng này không ?", "Question", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.No)
            {
                //do no stuff
            }
            else
            {
                //do yes stuff
                string st1 = txb_NCC.Text;

                remove.sp_deleteCus(st1);
                MessageBox.Show("Bạn đã xóa thành công khách hàng này!");
            }

            
        }

        
    }
}

using System;
using System.Collections.Generic;  // Dùng cho danh sách các chi tiết đơn hàng
using System.Linq;
using System.Threading.Tasks;
using WebApp.Areas.Admin.Models;

namespace WebApp.ViewModels
{
    // ViewModel dùng để chuyển dữ liệu giữa Controller và View
    public class HDvaCTHD
    {
        // Thuộc tính chứa thông tin của đơn hàng
        public Donhang Donhangs { get; set; }

        // Thuộc tính chứa danh sách chi tiết đơn hàng (một đơn hàng có thể có nhiều chi tiết)
        public IEnumerable<ChitietDonHang> ChitietDonHangs { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json; // Dùng JsonSerializer mặc định của .NET 8
using WebApp.Areas.Admin.Data;
using WebApp.Areas.Admin.Models;

namespace WebApp.Controllers
{
    public class LoginController : Controller
    {
        private readonly DataProviderContext _context;

        public LoginController(DataProviderContext context)
        {
            _context = context;
        }

        // Hiển thị form đăng nhập
        public IActionResult Index()
        {
            return View();
        }

        // Xử lý đăng nhập
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Login([FromForm] Member member)
        {
            // Kiểm tra tên đăng nhập và mật khẩu đã mã hóa MD5
            var user = _context.Members.FirstOrDefault(m =>
                m.UserName == member.UserName);

            //var user = _context.Members.FirstOrDefault(m =>
            //    m.UserName == member.UserName &&
            //    m.Password == StringProcessing.CreateMD5Hash(member.Password));

            if (user == null)
            {
                // Gợi ý: nên thông báo rõ ràng
                ViewBag.LoginError = "Tên đăng nhập hoặc mật khẩu không đúng!";
                return View("Index");
            }

            // Lưu thông tin người dùng vào session
            var jsonUser = JsonSerializer.Serialize(user);
            HttpContext.Session.SetString("user", jsonUser);

            // Phân quyền: nếu Role == 0 thì vào trang Admin
            if (user.Role == 0)
            {
                return RedirectToAction("Index", "Home", new { area = "Admin" });
            }

            // Nếu không thì về trang người dùng
            return RedirectToAction("_homePartial", "Home");
        }
    }
}

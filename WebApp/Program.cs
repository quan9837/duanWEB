using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using WebApp.Areas.Admin.Data;

var builder = WebApplication.CreateBuilder(args);

// --- Cấu hình dịch vụ (DI) ---

// Kết nối cơ sở dữ liệu
builder.Services.AddDbContext<DataProviderContext>(options =>
   options.UseSqlServer(builder.Configuration.GetConnectionString("db_Shop")));

// Cấu hình Identity
builder.Services.AddDefaultIdentity<IdentityUser>(options =>
{
    options.SignIn.RequireConfirmedAccount = false;
    options.Password.RequireLowercase = false;
    options.Password.RequireUppercase = false;
})
.AddRoles<IdentityRole>()
.AddEntityFrameworkStores<DataProviderContext>();

// Dịch vụ Controller và View
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();

// Cấu hình Session
builder.Services.AddDistributedMemoryCache(); // Dùng để lưu session tạm thời
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30); // Thời gian hết hạn session
    options.Cookie.HttpOnly = true;                 // Chỉ cho phép truy cập từ phía server
    options.Cookie.IsEssential = true;              // Bắt buộc với GDPR
    options.Cookie.Name = "xuanthulab";             // Tên cookie session
});

var app = builder.Build();

// --- Cấu hình Pipeline HTTP ---

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

// Xử lý lỗi 404 chuyển về trang chủ
app.Use(async (context, next) =>
{
    await next();
    if (context.Response.StatusCode == 404)
    {
        context.Request.Path = "/Home";
        await next();
    }
});

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseSession();         // Bật session
app.UseAuthentication();  // Middleware xác thực người dùng
app.UseAuthorization();   // Middleware phân quyền người dùng

// --- Cấu hình định tuyến ---

app.MapControllerRoute(
    name: "areas",
    pattern: "{area:exists}/{controller=SanPhams}/{action=Index}/{id?}");

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapRazorPages();

app.Run();

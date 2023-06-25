using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using WebBanGiay.Models;
using WebBanGiay.ViewModels;
using X.PagedList;

namespace WebBanGiay.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        QlbanGiayTt1Context db = new QlbanGiayTt1Context();
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index(int page=1)
        {
            int pageNumber = page;
            int pageSize = 6;

            var lstsp = db.TDanhMucSps.AsNoTracking().OrderBy(x => x.TenSp).ToList();
            PagedList<TDanhMucSp> lst = new PagedList<TDanhMucSp>(lstsp, pageNumber, pageSize);

            return View(lst);
        }
        public IActionResult TypeProduct( string maloai, int page=1)
        {
            int pageNumber = page;
            int pageSize = 6;

            var lstLoai = db.TDanhMucSps.AsNoTracking().Where(x=>x.MaLoai == maloai).OrderBy(x=>x.TenSp).ToList();
            PagedList<TDanhMucSp> lst = new PagedList<TDanhMucSp>(lstLoai, pageNumber, pageSize);
            ViewBag.maloai = maloai;
            return View(lst);
        }
        public IActionResult Style( string style, int page=1)
        {
            int pageNumber = page;
            int pageSize = 6;

            var lstDt = db.TDanhMucSps.AsNoTracking().Where(x=>x.MaDt ==  style).OrderBy(x=>x.TenSp).ToList();
            PagedList<TDanhMucSp> lst = new PagedList<TDanhMucSp>(lstDt, pageNumber, pageSize);
			ViewBag.style = style;
			return View(lst);


        }

        public IActionResult ProductDetail(string masp)
        {
			var sp = db.TDanhMucSps.SingleOrDefault(x => x.MaSp == masp);
			var lstAnh = db.TAnhSps.Where(x => x.MaSp == masp).AsNoTracking().ToList();
            var ct = db.TChiTietSanPhams.Where(x=>x.MaSp == masp).AsNoTracking().ToList();

			var sanpham = new HomeProductDetailViewModel(sp, lstAnh,ct);
			if (sp == null)
			{
				return RedirectToAction("Index");
			}
			else
			{
				return View(sanpham);
			}
		}
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
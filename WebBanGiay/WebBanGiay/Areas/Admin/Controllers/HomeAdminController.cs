using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using WebBanGiay.Models;
using System.Data;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using System.Web;
using X.PagedList;

namespace WebBanGiay.Areas.Admin.Controllers
{
	[Area("admin")]
	[Route("admin")]
	public class HomeAdminController : Controller
	{
        private readonly IWebHostEnvironment _webHostEnvironment;
        public HomeAdminController(IWebHostEnvironment webHostEnvironment)
        {
            _webHostEnvironment = webHostEnvironment;

        }
        QlbanGiayTt1Context db = new QlbanGiayTt1Context();
		[Route("")]
		[Route("index")]
        
		public IActionResult Index()
		{
			return View();
		}
		[Route("listproducts")]

		public IActionResult ListProducts(int page=1)
		{
			int pageNumber = page;
			int pageSize = 6;
			var listsp = db.TDanhMucSps.OrderBy(x=>x.TenSp).ToList();
			PagedList<TDanhMucSp> lst = new PagedList<TDanhMucSp>(listsp,pageNumber,pageSize);
			return View(lst);
		}


		[Route("CreateProduct")]
		[HttpGet]
		public IActionResult CreateProduct()
		{
          
			ViewBag.MaHangSx=new SelectList(db.THangSxes.ToList(),"MaHangSx","HangSx");

            ViewBag.MaNuocSx = new SelectList(db.TQuocGia.ToList(), "MaNuoc", "TenNuoc");
            ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
            ViewBag.MaDt = new SelectList(db.TLoaiDts.ToList(), "MaDt", "TenLoai");
            return View();
		}
        [Route("CreateProduct")]
        [HttpPost]

        public async Task<IActionResult> CreateProductAsync(TDanhMucSp sp,IFormFile uploadhinh)
        {
            var wsCode = db.TDanhMucSps.Max(x => x.MaSp);
            long wsNoCode;
            Int64.TryParse(wsCode.Substring(2, wsCode.Length - 2), out wsNoCode);

            if (wsNoCode > 0)
            {
                wsNoCode = wsNoCode + 1;
                wsCode = "WC" + wsNoCode.ToString();
            }


			sp.MaSp= wsCode;

            string webRootPath = _webHostEnvironment.WebRootPath;
            string contentRootPath = _webHostEnvironment.ContentRootPath;
            if (uploadhinh != null ) {

                string _FileName = "";
                int index = uploadhinh.FileName.IndexOf('.');
                _FileName = "sp"+sp.MaSp + "." + uploadhinh.FileName.Substring(index+1);
                string _path = Path.Combine(webRootPath, "ImageProducts");
                string filepath = Path.Combine(_path, _FileName);
                using (Stream fileStream = new FileStream(filepath, FileMode.Create))
                {
                    await uploadhinh.CopyToAsync(fileStream);
                }
                sp.AnhDaiDien = _FileName;
            }
      
            db.TDanhMucSps.Add(sp);
			db.SaveChanges();
            return RedirectToAction("ListProducts");
        }

        [Route("EditProduct")]
        [HttpGet]
        public IActionResult EditProduct(string ma)
        {
            ViewBag.MaHangSx = new SelectList(db.THangSxes.ToList(), "MaHangSx", "HangSx");

            ViewBag.MaNuocSx = new SelectList(db.TQuocGia.ToList(), "MaNuoc", "TenNuoc");
            ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
            ViewBag.MaDt = new SelectList(db.TLoaiDts.ToList(), "MaDt", "TenLoai");
            TDanhMucSp sp = db.TDanhMucSps.Find(ma);
            return View(sp);

        }
        [Route("EditProduct")]
        [HttpPost]
        public async Task<IActionResult> EditProductAsync(TDanhMucSp sp, IFormFile uploadhinh)
        {

            ViewBag.MaHangSx = new SelectList(db.THangSxes.ToList(), "MaHangSx", "HangSx");

            ViewBag.MaNuocSx = new SelectList(db.TQuocGia.ToList(), "MaNuoc", "TenNuoc");
            ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
            ViewBag.MaDt = new SelectList(db.TLoaiDts.ToList(), "MaDt", "TenLoai");

           

         


            string webRootPath = _webHostEnvironment.WebRootPath;
            string contentRootPath = _webHostEnvironment.ContentRootPath;
            if (uploadhinh != null)
            {

                string _FileName = "";
                int index = uploadhinh.FileName.IndexOf('.');
                _FileName = "sp" + sp.MaSp + "." + uploadhinh.FileName.Substring(index + 1);
                string _path = Path.Combine(webRootPath, "ImageProducts");
                string filepath = Path.Combine(_path, _FileName);
                using (Stream fileStream = new FileStream(filepath, FileMode.Create))
                {
                    await uploadhinh.CopyToAsync(fileStream);
                }
                sp.AnhDaiDien = _FileName;
            }

            db.TDanhMucSps.Update(sp);
            db.SaveChanges();
            return RedirectToAction("ListProducts");
        }



        [Route("DeleteProduct")]
        [HttpGet]
        public IActionResult DeleteProduct(string maSp)
        {
            var LayMa = db.TChiTietSanPhams.Where(x => x.MaSp == maSp);
            foreach (var item in LayMa)
            {
                if (db.TChiTietHdbs.Where(x => x.MaChiTietSp == item.MaChiTietSp) != null)

                {
                    TempData["Message"] = "khong soa dc san pham nay";
                    return RedirectToAction("ListProducts");
                }
            }
            var listAnh = db.TAnhSps.Where(x => x.MaSp == maSp);
            if (listAnh != null) db.RemoveRange(listAnh);
            if (LayMa != null) db.RemoveRange(LayMa);

            db.Remove(db.TDanhMucSps.Find(maSp));
            db.SaveChanges();
            return RedirectToAction("ListProducts");
        }

        [Route("DetailProduct")]
        [HttpGet]
        public IActionResult DetailProduct(string ma)
        {
            TDanhMucSp sp = db.TDanhMucSps.Find(ma);
            return View(sp);

        }

        //Category


        [Route("listcategory")]

        public IActionResult ListCategories(int page = 1)
        {
            int pageNumber = page;
            int pageSize = 6;

            var lstSanPham = db.TLoaiSps.ToList();
            PagedList<TLoaiSp> lst = new PagedList<TLoaiSp>(lstSanPham, pageNumber, pageSize);
            return View(lst);
        }

        //add category
        [Route("CreateCategory")]
        [HttpGet]
        public IActionResult CreateCategory()
        {

            return View();
        }

        [Route("CreateCategory")]
        [HttpPost]
        public IActionResult CreateCategory(TLoaiSp sp)
        {
            db.TLoaiSps.Add(sp);
            db.SaveChanges();

            return RedirectToAction("ListCategories");
        }

        //editcategory

        [Route("EditCategory")]
        [HttpGet]
        public IActionResult EditCategory(string maloai)
        {

            TLoaiSp sp = db.TLoaiSps.Find(maloai);
            return View(sp);
        }
        [Route("EditCategory")]
        [HttpPost]

        public IActionResult EditCategory( TLoaiSp sp)
        {
            db.Update(sp);
            db.SaveChanges();
            return RedirectToAction("ListCategories");


        }


		[Route("DeleteCategory")]
		[HttpGet]
		public IActionResult DeleteCategory(string maloai)
		{
			var LayMa = db.TDanhMucSps.Where(x => x.MaLoai == maloai);
			
			
		
			if (LayMa != null) db.RemoveRange(LayMa);
		
			db.Remove(db.TLoaiSps.Find(maloai));
			db.SaveChanges();
			return RedirectToAction("ListProducts");
		}







	}
}

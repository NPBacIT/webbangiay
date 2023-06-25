using Microsoft.AspNetCore.Mvc;
using WebBanGiay.Models;
using HienlthOnline.Helpers;
namespace WebBanGiay.Controllers
{
	public class CartController : Controller
	{
		private readonly ILogger<CartController> _logger;
		QlbanGiayTt1Context db = new QlbanGiayTt1Context();
		public CartController(ILogger<CartController> logger)
		{
			_logger = logger;
		}
		public IActionResult Index()
		{
			return View(Carts);
		}

		public List<CartItem> Carts {
		     
			get
			{
				var data = HttpContext.Session.Get<List<CartItem>>("GioHang");
				if (data == null)
				{
					data = new List<CartItem>();
				}
				return data;


			}
		}
		public IActionResult AddToCart(string id, int SoLuong, string Size) {
			var myCart = Carts;
			var item = myCart.SingleOrDefault(p=> p.Id == id);

			if(item == null)
			{
				var sp = db.TDanhMucSps.FirstOrDefault(p => p.MaSp== id);
				var sp1 = db.TChiTietSanPhams.FirstOrDefault(p => p.MaSp==id);
				item = new CartItem {
					Id = id,
					Name = sp.TenSp,
					Dongia = sp.GiaLonNhat.Value,
					soluong = SoLuong,
					size = Size,
					Hinh=sp.AnhDaiDien


				
				};
				myCart.Add(item);

			}
			else
			{
				item.soluong+=SoLuong;
			}
			HttpContext.Session.Set("GioHang",myCart);
			return RedirectToAction("Index");

		}
	}
}

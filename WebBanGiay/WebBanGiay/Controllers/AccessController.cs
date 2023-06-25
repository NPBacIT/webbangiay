using Microsoft.AspNetCore.Mvc;
using WebBanGiay.Models;

namespace WebBanGiay.Controllers
{
	public class AccessController : Controller
	{
		QlbanGiayTt1Context db = new QlbanGiayTt1Context();
		[HttpGet]
		public IActionResult Login()
		{
			if (HttpContext.Session.GetString("UserName") == null){

				return View();
			}

			else
			{
				return RedirectToAction("Index","Home");
			}
		}
		[HttpPost]
		public IActionResult Login(TUser user ) {

			if (HttpContext.Session.GetString("UserName") == null)
			{
				var u = db.TUsers.Where(x=>x.Username.Equals(user.Username) && x.Password.Equals(user.Password) && x.LoaiUser==1).FirstOrDefault();
                var u1 = db.TUsers.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password) && x.LoaiUser == 0).FirstOrDefault();
                if (u != null)
				{
					HttpContext.Session.SetString("UserName", u.Username.ToString());

					return RedirectToAction("Index", "Home");

				}
				if(u1!=null)
				{
                    HttpContext.Session.SetString("UserName", u1.Username.ToString());

                    return RedirectToAction("Index", "Admin");

                }
			}
			return View();
		
		}
		public IActionResult Logout()
		{

			HttpContext.Session.Clear();
			HttpContext.Session.Remove("UserName");
			return RedirectToAction("Login", "Access");
		}
	}
}

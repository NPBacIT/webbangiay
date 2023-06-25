using WebBanGiay.Models;
using Microsoft.AspNetCore.Mvc;
using WebBanGiay.Repository;
namespace WebBanGiay.ViewComponents
{
	public class LoaiDtMenuViewComponent: ViewComponent
	{
		private readonly ILoaiDtRepository _loaiDt;
		public LoaiDtMenuViewComponent(ILoaiDtRepository loaiDtRepository)
		{
			_loaiDt = loaiDtRepository;

		}
		public IViewComponentResult Invoke()
		{
			var loaidt = _loaiDt.GetAllLoaiDt().OrderBy(x => x.TenLoai);
			return View(loaidt);

		}
	}
}

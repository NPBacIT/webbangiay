﻿using WebBanGiay.Models;
using Microsoft.AspNetCore.Mvc;
using WebBanGiay.Repository;

namespace WebBanGiay.ViewComponents
{
	public class LoaiSpMenuViewComponent: ViewComponent
	{
		private readonly ILoaiSpRepository _loaiSp;

		public LoaiSpMenuViewComponent(ILoaiSpRepository loaiSpRepository)
		{
			_loaiSp = loaiSpRepository;
			
		}
		public IViewComponentResult Invoke()
		{
			var loaisp = _loaiSp.GetAllLoaiSp().OrderBy(x => x.Loai);
			return View(loaisp);

		}

	}
}

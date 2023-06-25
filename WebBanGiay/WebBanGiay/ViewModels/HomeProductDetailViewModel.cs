using WebBanGiay.Models;

namespace WebBanGiay.ViewModels
{
	public class HomeProductDetailViewModel
	{
		public TDanhMucSp sanpham;
		
		public List<TAnhSp> anhSp;
		public List<TChiTietSanPham> chiTietSp;
		public HomeProductDetailViewModel(TDanhMucSp sanpham, List<TAnhSp> anhSp, List<TChiTietSanPham> chiTietSp)
		{
			this.sanpham = sanpham;
			this.anhSp = anhSp;
			this.chiTietSp = chiTietSp;
			
		}
	
		public TDanhMucSp Sanpham { get => sanpham; set => sanpham = value; }
		public List<TAnhSp> Anhsanpham { get => anhSp; set => anhSp = value; }

		public List<TChiTietSanPham> ChitietSp { get => chiTietSp; set => chiTietSp = value;}



	}
}

using WebBanGiay.Models;
namespace WebBanGiay.Repository
{
	public interface ILoaiSpRepository
	{
		TLoaiSp Add(TLoaiSp loaiSp);

		TLoaiSp Update(TLoaiSp loaiSp);
		TLoaiSp Delete(string maloaiSp);

		TLoaiSp GetLoaiSp(string maloaisp);

		IEnumerable<TLoaiSp> GetAllLoaiSp();
	}
}

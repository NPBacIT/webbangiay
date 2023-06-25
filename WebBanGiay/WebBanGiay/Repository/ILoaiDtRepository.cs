using WebBanGiay.Models;
namespace WebBanGiay.Repository
{
	public interface ILoaiDtRepository
	{
		TLoaiDt Add(TLoaiDt loaidt);

		TLoaiDt Update(TLoaiDt loaidt);

		TLoaiDt Delete(string maloaidt);

		TLoaiDt GetLoaiDt(string maloaidt);

		IEnumerable<TLoaiDt> GetAllLoaiDt();
	}
}

using WebBanGiay.Models;
namespace WebBanGiay.Repository
{

	public class LoaiSpRepository : ILoaiSpRepository
	{
		private readonly QlbanGiayTt1Context _context;

		public LoaiSpRepository(QlbanGiayTt1Context context)
		{
			_context = context;
		}
		public TLoaiSp Add(TLoaiSp loaiSp)
		{
			_context.TLoaiSps.Add(loaiSp);
			_context.SaveChanges();
			return loaiSp;
		}

		public TLoaiSp Delete(string maloaiSp)
		{
			throw new NotImplementedException();

		}

		public IEnumerable<TLoaiSp> GetAllLoaiSp()
		{
			return _context.TLoaiSps;
		}

		public TLoaiSp GetLoaiSp(string maloaisp)
		{
			return _context.TLoaiSps.Find(maloaisp);
		}

		public TLoaiSp Update(TLoaiSp loaiSp)
		{
			_context.Update(loaiSp);
			_context.SaveChanges();
			return loaiSp;
		}
	}
}

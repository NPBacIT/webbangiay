using WebBanGiay.Models;

namespace WebBanGiay.Repository
{
	public class LoaiDtRepository : ILoaiDtRepository
	{
		private readonly QlbanGiayTt1Context _context;

		public LoaiDtRepository(QlbanGiayTt1Context context)
		{
			_context = context;
		}
		public TLoaiDt Add(TLoaiDt loaidt)
		{
			_context.TLoaiDts.Add(loaidt);
			_context.SaveChanges();
			return loaidt;
			
		}

		public TLoaiDt Delete(string maloaidt)
		{
			throw new NotImplementedException();
		}

		public IEnumerable<TLoaiDt> GetAllLoaiDt()
		{
			return _context.TLoaiDts;
		}

		public TLoaiDt GetLoaiDt(string maloaidt)
		{
			return _context.TLoaiDts.Find(maloaidt);
		}

		public TLoaiDt Update(TLoaiDt loaidt)
		{
			_context.Update(loaidt);
			_context.SaveChanges();
			return loaidt;
		}
	}
}

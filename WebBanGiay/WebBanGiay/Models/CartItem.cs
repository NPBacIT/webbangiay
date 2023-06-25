namespace WebBanGiay.Models
{
	public class CartItem
	{
		public string Id { get; set; }
		public string Name { get; set; }

		public string Hinh { get; set; }

		public decimal Dongia { get; set;}

		public string size { get; set; }
		public int soluong { get; set; }
		public decimal ThanhTien => soluong * Dongia;

	}
}

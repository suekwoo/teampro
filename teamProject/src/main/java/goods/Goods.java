package goods;


	import java.util.Date;

	public class Goods {
		private int prodnum;
		private String name;
		private int price;
		private String content;
		private String image;
		private Date regdate;
		
		
		
		public int getProdnum() {
			return prodnum;
		}
		public void setProdnum(int prodnum) {
			this.prodnum = prodnum;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public Date getRegdate() {
			return regdate;
		}
		public void setRegdate(Date regdate) {
			this.regdate = regdate;
		}
		
		@Override
		public String toString() {
			return "Goods [prodnum=" + prodnum + ", name=" + name + ", price=" + price + 
					", content=" + content + ", image=" + image + ", regdate=" + regdate + "]";
		}
		
	   
		
	}


package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import model.Board;
import product.Product;
import product.ProductDao;
import product.ProductMybatis;



	@Controller
	@RequestMapping("/product/")
	public class ProductController {
		
		@Autowired
		ProductMybatis  pd;
		
		Model m;
		HttpSession session;
		HttpServletRequest request;
		
		//초기화 작업을 한다, 객체 초기화시에 사용한다 
		@ModelAttribute
		void init(HttpServletRequest request, Model m) {
			this.request=request;
			this.m=m;
			session = request.getSession();
			
		}
		
		
		
		
		@RequestMapping("productForm")
		public String productForm(HttpServletRequest request, HttpServletResponse response) {

			return "productForm";
		}
		
		@RequestMapping("productPro")
		public String productPro(@RequestParam("f") MultipartFile  multipartFile, Product product) {
			String path = request.getServletContext().getRealPath("/")+"WEB-INF/view/product/images/"; // 사진 파일 경로
			String msg = "상품 등록에 실패하였습니다.";
			String url = "/product/productForm";
			
			
			
			String filename="";
			String detailname="";
			
			if (!multipartFile.isEmpty()) {
				File file = new File(path, multipartFile.getOriginalFilename());
				filename = multipartFile.getOriginalFilename();
				detailname = multipartFile.getOriginalFilename();
				
					try {
						multipartFile.transferTo(file);
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				
			}	
				
				
				product.setImage(filename);
				product.setDetail(detailname);
				int num = pd.insertProduct(product);
				if (num > 0) {
					msg = "상품이 등록되었습니다.";
					url = "/product/productManagement";
				}
			
			
			m.addAttribute("msg", filename + ":" + msg);
			m.addAttribute("url", url);
			return "alert";
		} // productForm End
		

		
		 @RequestMapping("productList") 
		   
		    public String  productList() {
			 
			 
			 
			
			 if (request.getParameter("pageNum") != null) /* pageNum을 넘겨 받음 */ {
					session.setAttribute("pageNum", request.getParameter("pageNum"));
				}
			 String pageNum = (String) session.getAttribute("pageNum");
				if (pageNum == null)
					pageNum = "1"; // 넘겨받은 pageNum이 없으면 1페이지로

				int limit = 6; // 한 page 당 게시물 갯수
				int pageInt = Integer.parseInt(pageNum); // page 번호
			
				int productCount = pd.productCount();	// 전체 게시물 갯수
				int prodNum = productCount - ((pageInt - 1) * limit);
				
		    	List<Product>  li = pd.productList(pageInt, limit); 
		    	 
		    	 
		    	// paging
		    	 int bottomLine = 3;
		 		int start = (pageInt - 1) / bottomLine * bottomLine + 1;
		 		
		 		int end = start + bottomLine - 1;
		 		int maxPage = (productCount / limit) + (productCount % limit == 0 ? 0 : 1);
		 		if (end > maxPage) 	end = maxPage;
		    	 
		 		
		 		
		 		
		 		// 주문 관련 추가한 코드
		 		
		 		
		 		m.addAttribute("li", li);
		 		m.addAttribute("prodNum", prodNum);
		  
		 		m.addAttribute("pageInt", pageInt);
		 		m.addAttribute("bottomLine", bottomLine);
		 		m.addAttribute("start", start);
		 		m.addAttribute("end", end);
		 		m.addAttribute("maxPage", maxPage);
		    	 
		    	 
				return "product/productList";
			}
		 
		 @RequestMapping("productManagement") 
		 public String  productManagement() {
		    	 
		    	 List<Product>  ma = new ProductMybatis().productManagement();  	
		    	 m.addAttribute("ma", ma);
				return "product/productManagement";
		    
			}
		 
		 @RequestMapping("productUpdateForm")
			public String productUpdateForm(@RequestParam("prodnum") int prodnum) {
				
			
				String productName = "";
				

				
				Product product = pd.productOne(prodnum);
				m.addAttribute("productName", productName);
				m.addAttribute("product", product);
				return "product/productUpdateForm";
				
				
			} // productUpdateForm end

			
			@RequestMapping("productUpdatePro")
			public String productUpdatePro(HttpServletRequest request, HttpServletResponse response) {
				int num = 1;
				String path = request.getServletContext().getRealPath("/") + "view/product/images/";
				
				String msg = "";
				String url = "";
				String filename = "";
				
				try {
					MultipartRequest multi = new MultipartRequest(request, path, 10*1024*1024, "UTF-8");
					
					Product product = new Product();
					
					
					product.setProdnum(Integer.parseInt(multi.getParameter("prodnum")));
					product.setName(multi.getParameter("name"));
					product.setPrice(Integer.parseInt(multi.getParameter("price")));
					product.setStock(Integer.parseInt(multi.getParameter("stock")));
					product.setInfo(multi.getParameter("info"));
					
					product.setProdgender(Integer.parseInt(multi.getParameter("prodgender")));
					product.setProdans1(multi.getParameter("prodans1"));
					product.setProdans2(multi.getParameter("prodans2"));
					
					String image2 = multi.getFilesystemName("image2");
					if (image2 != null) {
						product.setImage(image2);
					} else {
						product.setImage(multi.getParameter("image"));
					}
					String detail2 = multi.getFilesystemName("detail2" );
					if (detail2 != null) {
						product.setDetail(detail2);
					} else {
						product.setDetail(multi.getParameter("detail"));
					}
					
					ProductMybatis pd = new ProductMybatis();
					
					
					
					if (pd.productUpdate(product) > 0) /* Update OK */ {
							msg = "수정을 완료했습니다.";
							url = "/product/productManagement"; 
						} else { // update fail
							msg = "수정을 실패했습니다.";
							url = "/product/productUpdateForm?prodnum=" + product.getProdnum(); // 해당 게시물의 UpdateForm으로 이동
						}
					
					
					
					
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}

				request.setAttribute("msg", msg);
				request.setAttribute("url", url);
				return "alert"; // view/product/alert 이동
			} // productUpdatePro end
			
			
			@RequestMapping("productDeleteForm")
			public String productDeleteForm(HttpServletRequest request, HttpServletResponse response) {
				
				int prodnum = Integer.parseInt(request.getParameter("prodnum"));
				request.setAttribute("prodnum", prodnum);
				return "productDeleteForm";
			} // productDelete end
		    
			@RequestMapping("productDeletePro")
			public String productDeletePro(HttpServletRequest request, HttpServletResponse response) {
				int prodnum = Integer.parseInt(request.getParameter("prodnum"));
				ProductMybatis  pd = new ProductMybatis();
				
				String msg = "";
				String url = "";
				if (pd.productDelete(prodnum) > 0) {
					msg = "게시글이 삭제 되었습니다.";
					url = "/product/productManagement";
				} else {
					msg = "삭제가 되지 않았습니다.";
					url = "/product/productManagement";
				}
				
				request.setAttribute("msg", msg);
				request.setAttribute("url", url);
				return "alert";
			} // productDeletePro end
			
			
			
			@RequestMapping("productDetail")
			public String productDetail(HttpServletRequest request, HttpServletResponse response) {
				int prodnum=1;
				try {
				 prodnum = Integer.parseInt(request.getParameter("prodnum"));
				} catch (Exception e) {
					e.printStackTrace();
					
				}
				ProductMybatis   pd = new ProductMybatis();
				Product product = pd.productOne(prodnum);
				
				request.setAttribute("product", product);
				
		
				return "productDetail";
			}

			
			
	} // ProductController End
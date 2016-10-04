package com.books.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.books.shoppingcart.dao.CartDAO;
import com.books.shoppingcart.dao.ProductDAO;
import com.books.shoppingcart.model.Cart;
import com.books.shoppingcart.model.Product;
import com.books.shoppingcart.model.User;
@Controller
@SessionAttributes("userId")
public class BookController {
	/*@Autowired(required=true)
	private ProductDAO productDAO;*/
	
	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private ProductDAO productDAO;
	
	/*@RequestMapping("/")
	public String test()
	{
		
		System.out.println("inside index controller");
		return "index";
	}*/
	@RequestMapping("/front")
	public ModelAndView view()
	{
		ModelAndView mav = new ModelAndView("front");
		User user = new User();
		mav.getModelMap().put("front", user);
		System.out.println("front clicked..");
		return mav;
	}
	
	@RequestMapping("/Login")
	public String showlogin()
	{
		System.out.println("inside login controller");
		return "Login";
	}
	@RequestMapping("/logout")
	public String showlogout()
	{
		System.out.println("inside login controller");
		return "front";
	}
	@RequestMapping("/Registration")
	public String showregister()
	{
		System.out.println("inside registration controller");
		return "Registration";
	}
	@RequestMapping("/genre")
	public ModelAndView  showgenre(@RequestParam(value = "userId") String userId)
	{
		System.out.println("inside registration controller");
		ModelAndView model = new ModelAndView("genre");
		System.out.println("userId"+userId);
		model.getModelMap().put("userId", userId);
		model.addObject("productList", this.productDAO.list());
		return model;
	}
	@RequestMapping("/raven")
	public ModelAndView showraven(@RequestParam(value = "bookId") String bookId,@RequestParam(value = "userId") String userId)
	{
		System.out.println("inside raven controller"+bookId);
		ModelAndView model = new ModelAndView("raven");
		model.getModelMap().put("userId", userId);
		System.out.println("userId"+userId);
		model.addObject("currProduct", this.productDAO.get(bookId));
		return model;
	}
	@RequestMapping("/outlier")
	public String showoutlier()
	{
		System.out.println("inside registration controller");
		return "outlier";
	}
	@RequestMapping("/admin")
	public String showadmin()
	{
		System.out.println("inside Admin Home controller");
		return "adminHome";
	}
	

	@RequestMapping(value="/cart", method= RequestMethod.GET)
	public String listCart(Model model,@RequestParam(value = "productId") String productId,@RequestParam(value = "currentUserSessionId") String currentUserSessionId){
		System.out.println("productId"+productId);
		System.out.println("currentUserSessionId"+currentUserSessionId);
		Cart currCartProduct = this.cartDAO.getProductsUsingProductIdAndUserId(productId,currentUserSessionId);
		if(null!=currCartProduct){
			int quantity = currCartProduct.getQuantity();
			currCartProduct.setQuantity(quantity+1);
			this.cartDAO.saveOrUpdate(currCartProduct);
		}else{
			Product currProduct = this.productDAO.get(productId);
			Cart cart = new Cart();
			cart.setPrice(currProduct.getPrice());
			cart.setProductId(productId);
			cart.setQuantity(1);
			cart.setSessionUserId(currentUserSessionId);
			cart.setStatus('Y');
			this.cartDAO.saveOrUpdate(cart);
		}
		
		model.addAttribute("cart", new Cart());
		model.addAttribute("user", new User());
		model.addAttribute("product",new Product());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("cartList", this.cartDAO.list());
		return "cart";

	}

	@RequestMapping(value ="/cartlist/add/{id}", method=RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id, HttpSession session){
		Product product= productDAO.get(id);
		System.out.println("inside");
		Cart cart=new Cart();
		cart.setPrice(product.getPrice());
		cart.setProductId(product.getId());
		cart.setQuantity(1);
		cart.setStatus('N');
		cartDAO.saveOrUpdate(cart);
		//return "redirect:views/home.jsp";
		return "redirect:/cart";
	}

	@RequestMapping("cart/remove/{id}")
	public String removeCart(@PathVariable("id") String id,ModelMap model) throws Exception{

		try {
			cartDAO.delete(id);
			model.addAttribute("message","Successfully removed");
		} catch (Exception e) {
			model.addAttribute("message",e.getMessage());
			e.printStackTrace();
		}
		//redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/cart";
	}

	@RequestMapping("cart/edit/{id}")
	public String editCart(@PathVariable("id") String id, Model model){
		System.out.println("editCart");
		model.addAttribute("cart", this.cartDAO.get(Integer.parseInt(id)));
		model.addAttribute("listCarts", this.cartDAO.list());
		return "cart";
	}




}

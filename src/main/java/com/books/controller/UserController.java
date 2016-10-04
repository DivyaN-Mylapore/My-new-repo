
	package com.books.controller;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

	import com.books.shoppingcart.dao.UserDAO;
import com.books.shoppingcart.model.User;


	@Controller
	@SessionAttributes("userId")
	public class UserController {
		 @Autowired
			UserDAO userDAO;


		 @RequestMapping("/isValidUser")
			public ModelAndView showMessage(@RequestParam(value = "userId") String userId,
					@RequestParam(value = "password") String password) {
				System.out.println("in validation controller");

				String message;
				ModelAndView mv ;
				if (userDAO.isValidUser(userId, password,true)) 
				{
					User currUser = userDAO.get(userId);
					if(currUser.getAdmin()){
						message = "Valid credentials";
						 mv = new ModelAndView("adminHome");
						 mv.getModelMap().put("userId", userId);
					}else{
						message = "Valid credentials";
						 mv = new ModelAndView("userHome");
						 mv.getModelMap().put("userId", userId);
					}
					
				} else {
					message = "Invalid credentials";
					 mv = new ModelAndView("Login");
				}

				//ModelAndView mv = new ModelAndView("success");
				mv.addObject("message", message);
				mv.addObject("name", userId);
				// mv.addObject("password", password);
				return mv;
			}
		 @RequestMapping("/register")
			public ModelAndView registerUser(@ModelAttribute User user){
				userDAO.saveorUpdate(user);
				return new ModelAndView("userHome");
				
			}

	}




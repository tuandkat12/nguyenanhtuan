/*	
*	(C) Copyright 2021 Fresher56. All Rights Reserved
*
* @author tuand
* @date May 4, 2021
* @ version 1.0
*/

package doan.movietheater.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import doan.movietheater.entity.Account;
import doan.movietheater.model.NewPasswordDTO;
import doan.movietheater.service.impl.AccountServiceImpl;

@Controller
public class LoginController {

	@Autowired
	AccountServiceImpl accountServiceImpl;

	@GetMapping(value = "/login")
	public String loginPage() {
		return "/login";
	}

	@PostMapping(value = "/login")
	public String postlogin(@ModelAttribute("formLogin") Account account, HttpSession httpSession, Model model) {
		Account account2 = accountServiceImpl.getAccountByUserName(account.getUserName());
		if (account2 != null && account2.getPassword().equals(account.getPassword())) {
			httpSession.setAttribute("account", account2);
			return "redirect:/homePage";
		} else {
			model.addAttribute("message", true);
			return "redirect:/login";
		}
	}

	@GetMapping(value = "/logout")
	public String logout(HttpSession httpSession) {
		httpSession.setAttribute("account", null);
		httpSession.invalidate();
		return "redirect:/homePage";
	}

	// goi mang hinh update pass
	@GetMapping(value = "/updatepassword")
	public String updatePassWord(Model model) {
		/*
		 * accountDTO.setAccountID(account.getAccountID());
		 * accountDTO.setAddress(account.getAddress()); String date =
		 * account.getDateOfBirth().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		 * accountDTO.setDateOfBirth(date); accountDTO.setDeleteFlag(0);
		 * accountDTO.setEmail(account.getEmail());
		 * accountDTO.setFullName(account.getFullName());
		 * accountDTO.setGender(account.getGender());
		 * accountDTO.setIdentityCard(account.getIdentityCard());
		 * accountDTO.setPassword(""); accountDTO.setNewPassword("");
		 * accountDTO.setPhoneNumber(account.getPhoneNumber()); String regisDate =
		 * account.getRegisterDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		 * accountDTO.setRegisterDate(regisDate);
		 * accountDTO.setRoleID(account.getRoles().getRoleID());
		 * accountDTO.setStatus(account.getStatus());
		 * accountDTO.setUserName(account.getUserName());
		 */
		model.addAttribute("newPass", new NewPasswordDTO());
		return "updatePassWord";
	}

	@PostMapping(value = "/updatePassword")
	public String postUpdatePassword(@ModelAttribute("newPass") NewPasswordDTO newP, HttpSession session, Model model) {
		Account account = (Account) session.getAttribute("account");
		if (account.getPassword().equals(newP.getOldPass())) {
			account.setPassword(newP.getNewPass1());
			accountServiceImpl.addOrEditMovie(account);
			model.addAttribute("change", true);
			return "redirect:/updatepassword";
		} else {
			model.addAttribute("change", false);
			return "redirect:/updatepassword";
		}
	}
}

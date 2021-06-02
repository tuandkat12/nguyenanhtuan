/*	
*	(C) Copyright 2021 Fresher56. All Rights Reserved
*
* @author tuand
* @date Jun 2, 2021
* @ version 1.0
*/

package doan.movietheater.model;

public class NewPasswordDTO {
	String oldPass;
	String newPass1;
	String confirmPass;
	
	public NewPasswordDTO() {
		// TODO Auto-generated constructor stub
	}

	public NewPasswordDTO(String oldPass, String newPass1, String confirmPass) {
		super();
		this.oldPass = oldPass;
		this.newPass1 = newPass1;
		this.confirmPass = confirmPass;
	}

	public String getOldPass() {
		return oldPass;
	}

	public void setOldPass(String oldPass) {
		this.oldPass = oldPass;
	}

	public String getNewPass1() {
		return newPass1;
	}

	public void setNewPass1(String newPass1) {
		this.newPass1 = newPass1;
	}

	public String getConfirmPass() {
		return confirmPass;
	}

	public void setConfirmPass(String confirmPass) {
		this.confirmPass = confirmPass;
	}
		
}

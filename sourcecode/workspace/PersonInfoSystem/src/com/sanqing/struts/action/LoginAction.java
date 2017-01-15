/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sanqing.struts.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.sanqing.struts.form.LoginForm;

/** 
 * MyEclipse Struts
 * Creation date: 04-15-2008
 * 
 * XDoclet definition:
 * @struts.action path="/login" name="loginForm" input="/form/login.jsp" scope="request" validate="true"
 * @struts.action-forward name="loginsuccess" path="/Frame.html"
 * @struts.action-forward name="loginfail" path="/form/login.jsp"
 */
public class LoginAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try{
			PrintWriter out = response.getWriter();
			LoginForm loginForm = (LoginForm) form;// TODO Auto-generated method stub
			com.sanqing.bll.BUserRight B_User = new com.sanqing.bll.BUserRight();
			try {
				//��֤���
				B_User.ValidUser(loginForm.getUsername(), loginForm.getPassword());
				out.print("true");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				out.print(e.getMessage());
			}
		}catch(IOException e1){
			e1.printStackTrace();
		}
		return null;
	}
}
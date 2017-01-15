/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sanqing.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 04-20-2008
 * 
 * XDoclet definition:
 * @struts.form name="warehouseForm"
 */
public class WarehouseForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** phone property */
	private String phone;

	/** ware_desc property */
	private String ware_desc;

	/** val_emp property */
	private String val_emp;

	/** ware_id property */
	private String ware_id;

	/** fax property */
	private String fax;

	/** ware_adrr property */
	private String ware_adrr;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the phone.
	 * @return String
	 */
	public String getPhone() {
		return phone;
	}

	/** 
	 * Set the phone.
	 * @param phone The phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/** 
	 * Returns the ware_desc.
	 * @return String
	 */
	public String getWare_desc() {
		return ware_desc;
	}

	/** 
	 * Set the ware_desc.
	 * @param ware_desc The ware_desc to set
	 */
	public void setWare_desc(String ware_desc) {
		this.ware_desc = ware_desc;
	}

	/** 
	 * Returns the val_emp.
	 * @return String
	 */
	public String getVal_emp() {
		return val_emp;
	}

	/** 
	 * Set the val_emp.
	 * @param val_emp The val_emp to set
	 */
	public void setVal_emp(String val_emp) {
		this.val_emp = val_emp;
	}

	/** 
	 * Returns the ware_id.
	 * @return String
	 */
	public String getWare_id() {
		return ware_id;
	}

	/** 
	 * Set the ware_id.
	 * @param ware_id The ware_id to set
	 */
	public void setWare_id(String ware_id) {
		this.ware_id = ware_id;
	}

	/** 
	 * Returns the fax.
	 * @return String
	 */
	public String getFax() {
		return fax;
	}

	/** 
	 * Set the fax.
	 * @param fax The fax to set
	 */
	public void setFax(String fax) {
		this.fax = fax;
	}

	/** 
	 * Returns the ware_adrr.
	 * @return String
	 */
	public String getWare_adrr() {
		return ware_adrr;
	}

	/** 
	 * Set the ware_adrr.
	 * @param ware_adrr The ware_adrr to set
	 */
	public void setWare_adrr(String ware_adrr) {
		this.ware_adrr = ware_adrr;
	}
}
package crg.first.action;

import com.opensymphony.xwork2.ActionSupport;
import crg.first.bean.*;
public class HelloStruts2Action extends ActionSupport {
    
    private static final long serialVersionUID = 1L;

    @Override
    public String execute() throws Exception {
        System.out.println("执行Action");
        return SUCCESS;
    }
    
    //新增自定义方法
    public String login() {
        return SUCCESS;
    }
    
  //新增自定义方法
    public String crg_login() {
    	LoginBean obj_login_bean= new LoginBean();
    	if(obj_login_bean.login()){
    		 return SUCCESS;
    	}
    	else{
    		return ERROR;
    	}
    }
    
}

package action;


import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import model.Empleado;
import service.EmpleadoService;

public class ActionLogin extends ActionSupport implements SessionAware{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3057277659417311377L;

	private static final Logger logger = LogManager.getLogger(ActionLogin.class);

	private String user;
	private String password;
	
	private SessionMap<String, Object> sessionMap; 	
	
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String login() {
		
		logger.debug("Ingreso al login");
		
		EmpleadoService service = new EmpleadoService();
		
		Empleado emp = service.login(user, password);
		
		if (emp instanceof Empleado) {
			return SUCCESS;
		}		
		return ERROR;
	}

	@Override
	public void setSession(Map<String, Object> map) {
		sessionMap = (SessionMap<String, Object>) map;
	}
	
	public String logout() {
		
		sessionMap.remove("user");
		sessionMap.invalidate();
		
		return "LOGOUT";
	}

}

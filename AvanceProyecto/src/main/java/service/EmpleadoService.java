package service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.struts2.dispatcher.SessionMap;

import model.Empleado;
import mybatis.MyBatisUtil;
import mybatis.mapper.EmpleadoMapper;

public class EmpleadoService {
	
	public Empleado login(String usuario, String password) {
		
		Empleado empleado = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		
		
		try {
			EmpleadoMapper mapper = session.getMapper(EmpleadoMapper.class);
			
			HashMap<Object, Object> parameters = new HashMap<>();
			parameters.put("user", usuario);
			parameters.put("password", password);

			
			empleado = mapper.login(parameters);
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			session.close();
		}
		return empleado;
	}

}

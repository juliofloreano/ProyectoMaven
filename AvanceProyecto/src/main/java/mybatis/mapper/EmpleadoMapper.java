package mybatis.mapper;

import java.util.HashMap;

import model.Empleado;

public interface EmpleadoMapper {
	
	public Empleado login(HashMap<Object, Object> params);

}

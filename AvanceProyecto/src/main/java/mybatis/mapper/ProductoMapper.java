package mybatis.mapper;

import java.util.List;
import model.*;

public interface ProductoMapper {

	public List<Producto> listadoProducto() throws Exception;
	
	public int eliminarProducto(int codigo) throws Exception;
	
	public int registrarProducto(Producto p) throws Exception;
}

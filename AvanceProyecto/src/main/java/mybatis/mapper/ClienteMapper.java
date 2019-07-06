package mybatis.mapper;

import java.util.List;

import model.Cliente;

public interface ClienteMapper {
	
	public List<Cliente> listadoClientes() throws Exception;
	
	public int eliminarCliente(int codigo) throws Exception;
	
	public int registrarCliente(Cliente c) throws Exception;

}

package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.Cliente;
import service.ClienteService;

public class ClienteAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6396952986113872365L;
	
	private Cliente cliente;
	private int codigo;
	List<Cliente> lstClientes;
	
	public String registro() {
		// recibir los datos del jsp
		ClienteService servicio = new ClienteService();
		
		int ok = servicio.registrar(cliente);
		
		if (ok == 0) {
			addActionError("Error al registrar");
			return ERROR;
		} else {
			addActionMessage("Registro exitoso!");
			return SUCCESS;
		}
	}
	
	public String eliminar() {
		ClienteService servicio = new ClienteService();
		System.out.println("-- eliminar --");
		
		int ok = servicio.eliminar(codigo);
		
		if (ok == 0) {
			addActionError("Error al eliminar");
			return ERROR;
		} else {
			addActionMessage("Producto eliminado con éxito!");
			//return SUCCESS;
			
			return listar();
		}
	}
	
	public String listar() {
		ClienteService servicio = new ClienteService();
		
		lstClientes = servicio.listado();
		System.out.println("-- listar --");
		
		if (lstClientes == null) {
			addActionError("Listado vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public List<Cliente> getLstClientes() {
		return lstClientes;
	}

	public void setLstClientes(List<Cliente> lstClientes) {
		this.lstClientes = lstClientes;
	}
	
	

}

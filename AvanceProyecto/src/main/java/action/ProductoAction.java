package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.Producto;
import service.ProductoService;

public class ProductoAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6933342939407425567L;
	private Producto producto;
	private int codigo;
	List<Producto> lstProductos;
	
	public String registro() {
		// recibir los datos del jsp
		ProductoService servicio = new ProductoService();
		
		int ok = servicio.registrar(producto);
		
		if (ok == 0) {
			addActionError("Error al registrar");
			return ERROR;
		} else {
			addActionMessage("Registro exitoso!");
			return SUCCESS;
		}
	}
	
	public String eliminar() {
		ProductoService servicio = new ProductoService();
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
		ProductoService servicio = new ProductoService();
		
		lstProductos = servicio.listado();
		System.out.println("-- listar --");
		
		if (lstProductos == null) {
			addActionError("Listado vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public List<Producto> getLstProductos() {
		return lstProductos;
	}

	public void setLstProductos(List<Producto> lstProductos) {
		this.lstProductos = lstProductos;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	
	
	

}

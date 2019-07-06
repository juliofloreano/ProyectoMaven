package model;

public class Empleado {
	
	private int idEmpleado;
	private String ape_pat_emp;
	private String ape_mat_emp;
	private String nom_emp;
	private String user;
	private String password;
	
	public int getIdEmpleado() {
		return idEmpleado;
	}
	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}
	public String getApe_pat_emp() {
		return ape_pat_emp;
	}
	public void setApe_pat_emp(String ape_pat_emp) {
		this.ape_pat_emp = ape_pat_emp;
	}
	public String getApe_mat_emp() {
		return ape_mat_emp;
	}
	public void setApe_mat_emp(String ape_mat_emp) {
		this.ape_mat_emp = ape_mat_emp;
	}
	public String getNom_emp() {
		return nom_emp;
	}
	public void setNom_emp(String nom_emp) {
		this.nom_emp = nom_emp;
	}
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

}

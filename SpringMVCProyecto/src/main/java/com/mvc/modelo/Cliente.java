package com.mvc.modelo;


public class Cliente {

	private String nombre;
	private String apellido;
	private String fechaNacimiento;
	private String pais;
	private String email;
	private String clave;

	public Cliente() {
		this.nombre = "";
		this.apellido = "";
		this.fechaNacimiento = "";
		this.pais = "";
		this.email = "";
		this.clave = "";
	}

	public Cliente(String nombre, String apellido, String fechaNacimiento, String pais, String email, String clave) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.fechaNacimiento = fechaNacimiento;
		this.pais = pais;
		this.email = email;
		this.clave = clave;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	@Override
	public String toString() {
		return "Cliente [nombre=" + nombre + ", apellido=" + apellido + ", fecha=" + fechaNacimiento + ", email="
				+ email + ", clave=" + clave + "]";
	}

}

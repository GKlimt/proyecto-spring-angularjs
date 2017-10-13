package com.mvc.modelo;

public class Historial {

	private String ciudad;
	private String fecha;
	private String temperatura;
	private String descripcion;

	public Historial(String ciudad, String fecha, String temperatura, String descripcion) {
		this.ciudad = ciudad;
		this.fecha = fecha;
		this.temperatura = temperatura;
		this.descripcion = descripcion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getTemperatura() {
		return temperatura;
	}

	public void setTemperatura(String temperatura) {
		this.temperatura = temperatura;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Historial [ciudad=" + ciudad + ", fecha=" + fecha + ", temperatura=" + temperatura + ", descripcion="
				+ descripcion + "]";
	}

}

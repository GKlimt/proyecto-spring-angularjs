package com.mvc.servicios;


import com.mvc.modelo.Cliente;

public interface ServicioCliente {

	
	void adicionarClientes(Cliente cliente);
	
	public boolean verificarCliente(Cliente cliente);
	
	public boolean verificarLogin(Cliente cliente);
}

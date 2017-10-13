package com.mvc.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.mvc.modelo.Cliente;
import com.mvc.servicios.ServicioCliente;
import com.mvc.servicios.ServicioClienteImpl;

@Controller
public class ClientesController {


	@Autowired
	private ServicioCliente servicio = new ServicioClienteImpl();

	@RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
	public ModelAndView inicio() {
	
		return new ModelAndView("login", "usuario", new Cliente());

	}

	//Login
	@RequestMapping(value = "/verificarLogin.html", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("usuario") Cliente cliente) {


		if (servicio.verificarLogin(cliente) == true) {

			ModelAndView modeloDevuelta = new ModelAndView("tiempo");

			//modeloDevuelta.addObject("usuario", cliente);

			return modeloDevuelta;
		}

		return new ModelAndView("errorLogin");
	}

	// REGISTRO

	@RequestMapping(value = "/registro.html", method = RequestMethod.POST)
	public ModelAndView registro(@ModelAttribute("usuario") Cliente cliente) {

		if (servicio.verificarCliente(cliente)) {

			return new ModelAndView("clienteExiste");
		}
		servicio.adicionarClientes(cliente);
		return new ModelAndView("correcto");
	}

}

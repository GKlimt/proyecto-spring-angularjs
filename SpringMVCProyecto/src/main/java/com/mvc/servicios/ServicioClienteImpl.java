package com.mvc.servicios;

import org.bson.Document;
import org.springframework.stereotype.Repository;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import com.mvc.modelo.Cliente;

@Repository
public class ServicioClienteImpl implements ServicioCliente {

	private static String clienteURI = ;
	private static MongoClientURI uri = null;
	private static MongoClient mongoClient = null;

	@SuppressWarnings("resource")
	public MongoDatabase conexionMDB(MongoClientURI uri, String clienteURI, MongoClient mongoClient) {

		uri = new MongoClientURI(clienteURI);
		mongoClient = new MongoClient(uri);

		MongoDatabase conBBDD = mongoClient.getDatabase("bsdEnterprise");
		return conBBDD;
	}

	public void adicionarClientes(Cliente cliente) {

		conexionMDB(uri, clienteURI, mongoClient).getCollection("usuarios").insertOne(
				new Document().append("nombre", cliente.getNombre()).append("apellido", cliente.getApellido())
						.append("fecha", cliente.getFechaNacimiento()).append("pais", cliente.getPais())
						.append("email", cliente.getEmail()).append("clave", cliente.getClave()));

	}

	public boolean verificarCliente(Cliente cliente) {

		FindIterable<Document> iterable = conexionMDB(uri, clienteURI, mongoClient).getCollection("usuarios").find();

		// El email no se puede repetir
		boolean existeEmail = false;

		for (Document document : iterable) {
			if (document.get("email").toString().equals(cliente.getEmail())) {
				existeEmail = true;
			}
		}
		return existeEmail;

	}

	public boolean verificarLogin(Cliente cliente) {

		FindIterable<Document> iterable = conexionMDB(uri, clienteURI, mongoClient).getCollection("usuarios").find();
		boolean existeRegistro = false;

		for (Document document : iterable) {
			if (document.get("email").toString().equals(cliente.getEmail())
					&& document.get("clave").toString().equals(cliente.getClave())) {
				existeRegistro = true;
			}
		}
		return existeRegistro;

	}

}

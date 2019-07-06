<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%@ taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Clientes</title>
</head>
<body>
	
	<s:fielderror theme="bootstrap"/>
	<s:property value="%{#session.empleado.nom_emp}"></s:property>
	<div align="right">
		<a cssClass="btn" href="logout">Cerrar Sesión</a>
		</div>

	<div class="col-md-9">
		<h1>Lista de Clientes</h1> 
		
		<a class="btn btn-primary" href="listandoClientes">Ver datos</a>
		<a class="btn btn-primary" href="registroClientes.jsp">Registrar Cliente</a>
		
		<a class="btn btn-primary" href="principal.jsp">Menú Principal</a>
		
	</div>
	
	
	<br>
	<br>

	<div class="col-md-9">
    	 <table class="table">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Direccion</th>
                            <th>Email</th>
                            <th>Telefono</th>
                            <th>Fecha de Nacimiento</th>
                        </tr>
                    </thead>
                    <tbody>
		            <s:iterator value="lstClientes">
						<tr>
							<td><s:property value="codigo" /></td>
							<td><s:property value="nombre" /></td>
							<td><s:property value="apellidos" /></td>
							<td><s:property value="direccion" /></td>
							<td><s:property value="email" /></td>
							<td><s:property value="telefono" /></td>
							<td><s:property value="fechanac" /></td>							
							<td><a class="btn btn-primary" href="eliminarProd?={#codigo}" >Eliminar</a></td>
							
						</tr>
					</s:iterator>
                    </tbody>
                </table>   
		</div>

	
	
</body>
</html>
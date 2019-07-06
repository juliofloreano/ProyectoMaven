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
<title>Lista de Productos</title>
</head>
<body>
	
	<s:fielderror theme="bootstrap"/>
	<s:property value="%{#session.empleado.nom_emp}"></s:property>
	<div align="right">
		<a cssClass="btn" href="logout">Cerrar Sesión</a>
		</div>

	<div class="col-md-9">
		<h1>Lista de Productos</h1> 
		
		<a class="btn btn-primary" href="listando">Ver datos</a>
		<a class="btn btn-primary" href="registro.jsp">Registrar Producto</a>
		
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
                            <th>Precio</th>
                            <th>Descripcion</th>
                            <th>Stock</th>
                            <th>Categoría</th>
                            <th>Fecha de Registro</th>
                        </tr>
                    </thead>
                    <tbody>
		            <s:iterator value="lstProductos">
						<tr>
							<td><s:property value="codigo" /></td>
							<td><s:property value="nombre" /></td>
							<td><s:property value="precio" /></td>
							<td><s:property value="descripcion" /></td>
							<td><s:property value="stock" /></td>
							<td><s:property value="categoria" /></td>
							<td><s:property value="fechareg" /></td>							
							<td><a class="btn btn-primary" href="eliminarProd?={#codigo}" >Eliminar</a></td>
							
						</tr>
					</s:iterator>
                    </tbody>
                </table>   
		</div>

	
	
</body>
</html>
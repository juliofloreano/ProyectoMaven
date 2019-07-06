<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!------ Include the above in your HEAD tag ---------->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Registro de Productos</title>
	<sb:head/>
</head>
<body>

	
<s:actionmessage theme="bootstrap"/>

	<div align="right">
		<a cssClass="btn" href="logout">Cerrar Sesión</a>
		</div>
		
<div class="container register-form">
		<s:form action="registrando" enctype="multipart/form-data">
            <div class="form">
                <div class="note">
                    <H1>Registre un nuevo producto</H1>
                </div>

                <div class="form-content">
                    <div class="row">
                    
                        <div class="col-md-6">
                            <div class="form-group">                                
                                Nombre: <s:textfield class="form-control" name="producto.nombre" placeholder="Indica el nombre"/>
                            </div>
                            <div class="form-group"> 
                                Precio: <s:textfield class="form-control" name="producto.precio" placeholder="¿Cuánto cuesta?"/>
                            </div>
                            <div class="form-group"> 
                                Stock: <s:textfield class="form-control" name="producto.stock" placeholder="¿Cuántos hay?"/>
                            </div>
                        </div>
                        
                        
                        <div class="col-md-6">
                            <div class="form-group">                             
                                Descripcion: <s:textfield class="form-control" name="producto.descripcion" placeholder="Describe el producto"/>
                            </div>
                            <div class="form-group">
                                Categoria: <s:textfield class="form-control" name="producto.categoria" placeholder="Categoría"/>
                            </div>
                            <div class="form-group"> 
                                Fecha de Registro: <s:textfield class="form-control" name="producto.fechareg" placeholder="Ejemplo: 2019-07-04"/>
                            </div>
                        
                    </div>
                   
                    
                </div>
            </div>
</div>
 					<s:submit class="btn btn-primary" value="Registrar" />
                    <a class="btn btn-primary" href="listado.jsp">Lista de Productos</a>
                    <a class="btn btn-primary" href="listado.jsp">Cancelar</a>
</s:form>
</div>


	
</body>
</html>
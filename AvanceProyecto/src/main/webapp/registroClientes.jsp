<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<sb:head/>
</head>
<body>

	
<s:actionmessage theme="bootstrap"/>

	<div align="right">
		<a cssClass="btn" href="logout">Cerrar Sesión</a>
		</div>
		
<div class="container register-form">
		<s:form action="registrandoClientes" enctype="multipart/form-data">
            <div class="form">
                <div class="note">
                    <H1>Registre un nuevo producto</H1>
                </div>

                <div class="form-content">
                    <div class="row">
                    
                        <div class="col-md-6">
                            <div class="form-group">                                
                                Nombre: <s:textfield class="form-control" name="cliente.nombre" placeholder="¿Cuál es su nombre?"/>
                            </div>
                            <div class="form-group"> 
                                Apellidos: <s:textfield class="form-control" name="cliente.apellidos" placeholder="¿Cómo apellida?"/>
                            </div>
                            <div class="form-group"> 
                                Email: <s:textfield class="form-control" name="cliente.email" placeholder="¿Cómo lo contactamos?"/>
                            </div>
                        </div>
                        
                        
                        <div class="col-md-6">
                            <div class="form-group">                             
                                Direccion: <s:textfield class="form-control" name="cliente.direccion" placeholder="¿Dónde vive?"/>
                            </div>
                            <div class="form-group">
                                Telefono: <s:textfield class="form-control" name="cliente.telefono" placeholder="Ingrese su teléfono"/>
                            </div>
                            <div class="form-group"> 
                                Fecha de Nacimiento: <s:textfield class="form-control" name="cliente.fechanac" placeholder="¿Cuándo nació?"/>
                            </div>
                        
                    </div>
                   
                    
                </div>
            </div>
</div>
 					<s:submit class="btn btn-primary" value="RegistrarClientes" />
                    <a class="btn btn-primary" href="clientes.jsp">Lista de Clientes</a>
                    <a class="btn btn-primary" href="clientes.jsp">Cancelar</a>
</s:form>
</div>


	
</body>
</html>
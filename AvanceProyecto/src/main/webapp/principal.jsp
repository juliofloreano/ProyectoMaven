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
<Script Language="JavaScript">
    function Mostrarhora() {
      var hora = new Date()
      var hrs = hora.getHours();
      var min = hora.getMinutes();
      var hoy = new Date();
      var m = new Array();
      var d = new Array()
      var an= hoy.getYear();
      m[0]="Enero";  m[1]="Febrero";  m[2]="Marzo";
      m[3]="Abril";   m[4]="Mayo";  m[5]="Junio";
      m[6]="Julio";    m[7]="Agosto";   m[8]="Septiembre";
      m[9]="Octubre";   m[10]="Noviembre"; m[11]="Diciembre";
      document.write("Son las "+hrs+":"+min+" (");
      document.write(hoy.getDate());
      document.write(" de ");
      document.write(m[hoy.getMonth()]);
      document.write(")");
    }
  </Script>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenido</title>
</head>
<body>
	<s:property value="#session.user" />
	<s:fielderror theme="bootstrap"/>
	<div align="right">
		<a cssClass="btn" href="logout">Cerrar Sesión
		<br>
		<script>
    Mostrarhora();
  </script>
  </a>
		</div>

	<div class="col-md-9">
		<h1>Bienvenido </h1> 
		
		<a class="btn btn-primary" href="listado.jsp">Administrar Productos</a>
		<br>
		<br>
		<a class="btn btn-primary" href="clientes.jsp">Administrar Clientes</a>
		
	</div>
</body>
</html>
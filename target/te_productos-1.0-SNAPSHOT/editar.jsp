<%-- 
    Author     : RONALD ALEJO MAMANI
--%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto item = (Producto)request.getAttribute("miProducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <CENTER>
        <h1><%= (item.getId() == 0) ? "NUEVO REGISTRO" : "EDITAR REGISTRO" %></h1>
        <form action="MainController" method="POST">
            <input type="hidden" name="id" value="<%= item.getId()%>">
            <table >
                <tr>
                    <td>DESCRIPCION</td>
                    <td><input  type="text" name="descripcion" value="<%= item.getDescripcion()%>"></td>
                </tr>
                <tr>
                    <td>CANTIDAD</td>
                    <td><input type="text" name="cantidad" value="<%= item.getCantidad()%>"></td>
                </tr>
                <tr>
                    <td>PRECIO</td>
                    <td><input type="text" name="precio" value="<%= item.getPrecio()%>"></td>
                </tr>
                <tr>
                    <td>CATEGORIA</td>
                    <td><input type="text" name="categoria" value="<%= item.getCategoria()%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ENVIAR"></td>
                </tr>
            </table>
        </form>
    </CENTER>
    </body>
</html>

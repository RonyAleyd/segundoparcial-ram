<%-- 
    Author     : RONALD ALEJO MAMANI
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>)session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <table border="1">
                <tr>
                    <th>
                        <h2>SEGUNDO PARCIAL TEM-742</h2>
                        <h3>Nombre: RONALD ALEJO MAMANI</h3>
                        <h3>Carnet: 9077207 LP </h3>
                    </th>
                </tr>
            </table>
        

        <h1>PRODUCTOS</h1>
        <a href="MainController?op=nuevo">NUEVO PRODUCTO</a>
        <table border = "1">
            <tr>
                <th>ID</th>
                <th>DESCRIPCION</th>
                <th>CANTIDAD</th>
                <th>PRECIO</th>
                <th>CATEGORIA</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null){
                    for (Producto item : lista){
            %>
            <tr>
                <th><%= item.getId() %></th>
                <th><%= item.getDescripcion() %></th>
                <th><%= item.getCantidad() %></th>
                <th><%= item.getPrecio() %></th>
                <th><%= item.getCategoria()%></th>
                <th><a href="MainController?op=editar&id=<%= item.getId()%>">EDITAR</a></th>
                <th><a href="MainController?op=eliminar&id=<%= item.getId()%>">ELIMINAR</a></th>
            </tr>
            <%
                    }
                }        
            %>
        </table>
        </center>
    </body>
</html>

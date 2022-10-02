<%-- 
    Document   : volver
    Created on : 30/09/2022, 01:33:30 PM
    Author     : perez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>   
        <h1>Ingrese la informacion requerida</h1>
        <form action="form.jsp"> 
        codigo: <input type="text" name = "Codigo"> <br/>
        apellidos: <input type="text" name = "Apellidos"> <br/>
        nombres: <input type="text" name = "Nombres"> <br/>
        sexo: <input type="text" name = "Sexo"> <br/>
        direccion: <input type="text" name = "Direccion"> <br/>
        centro de servicio: <input type="text" name = "CDS"> <br/>
        motivo de la consulta: <input type="text" name = "Mot"> <br/>
        medico que atendio: <input type="text" name = "Medico"> <br/>
        fecha: <input type="text" name = "Fecha"> <br/>
        <input type="submit" value = "ok">
        <textarea name = "gp1" value = "<%out.print(request.getParameter("rp1"));%>" hidden><%out.print(request.getParameter("rp1"));%></textarea>
        <textarea name = "gm1" value = "<%out.print(request.getParameter("rm1"));%>" hidden><%out.print(request.getParameter("rm1"));%></textarea>
        <textarea name = "gp2" value = "<%out.print(request.getParameter("rp2"));%>" hidden><%out.print(request.getParameter("rp2"));%></textarea>
        <textarea name = "gm" value = "<%out.print(request.getParameter("rm2"));%>" hidden><%out.print(request.getParameter("rm2"));%></textarea>
        <textarea name = "gp3" value = "<%out.print(request.getParameter("rp3"));%>" hidden><%out.print(request.getParameter("rp3"));%></textarea>
        <textarea name = "gm3" value = "<%out.print(request.getParameter("rm3"));%>" hidden><%out.print(request.getParameter("rm3"));%></textarea>
        <textarea name = "gp4" value = "<%out.print(request.getParameter("rp4"));%>" hidden><%out.print(request.getParameter("rp4"));%></textarea>
        <textarea name = "gm4" value = "<%out.print(request.getParameter("rm4"));%>" hidden><%out.print(request.getParameter("rm4"));%></textarea>
        <textarea name = "gp5" value = "<%out.print(request.getParameter("rp5"));%>" hidden><%out.print(request.getParameter("rp5"));%></textarea>
        <textarea name = "gm5" value = "<%out.print(request.getParameter("rm5"));%>" hidden><%out.print(request.getParameter("rm5"));%></textarea>
        </form>        
    </body>
</html>
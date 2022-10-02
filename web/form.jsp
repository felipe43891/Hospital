<%-- 
    Document   : form
    Created on : 27/09/2022, 05:11:39 PM
    Author     : perez
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    </head>
    <body>
        <h1>Seleccione el centro en el que quiere consultar informacion</h1>
        <%@ page import="lg.Medico"%>
        <%@ page import="lg.Paciente"%>
        <%@ page import="lg.IMedico"%>
        <%@ page import="lg.IPaciente"%>
        <%@ page import="lg.Hospital"%>
        <%@ page import="lg.Persona"%>       
        <% 
        String p1= request.getParameter("gp1") + "\n";
        String p2= request.getParameter("gp2") + "\n";
        String p3= request.getParameter("gp3") + "\n";
        String p4= request.getParameter("gp4") + "\n";
        String p5= request.getParameter("gp5") + "\n";
        String m1= request.getParameter("gm1") + "\n";
        String m2= request.getParameter("gm") + "\n";
        String m3= request.getParameter("gm3") + "\n";
        String m4= request.getParameter("gm4") + "\n";
        String m5= request.getParameter("gm5") + "\n";        
        Hospital hp = new Paciente();
        Persona ip = new IPaciente();
        Hospital hm = new Medico();
        Persona im = new IMedico();        
        if (request.getParameter("CDS").equals("1")) {
            p1 += ip.per(hp.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));           
            m1 += im.per(hm.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));           
        
        }
        if (request.getParameter("CDS").equals("2")) {
            p2 += ip.per(hp.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
            m2 += im.per(hm.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));           
        }
        if (request.getParameter("CDS").equals("3")) {
            p3 += ip.per(hp.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
            m3 += im.per(hm.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
        }
        if (request.getParameter("CDS").equals("4")) {
            p4 += ip.per(hp.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
            m4 += im.per(hm.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));           
        }
        if (request.getParameter("CDS").equals("5")) {
            p5 += ip.per(hp.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
            m5 += im.per(hm.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));           
        }
        %>       
         
        <button id="1" >1</button>
        <button id="2" >2</button>
        <button id="3" >3</button>
        <button id="4" >4</button>
        <button id="5" >5</button><br/>  
        <button id ="bp1" >Paciente</button>
        <button id ="bm1" >Medico</button>
        <button id ="bp2" >Paciente</button>
        <button id ="bm2" >Medico</button>
        <button id ="bp3" >Paciente</button>
        <button id ="bm3" >Medico</button>
        <button id ="bp4" >Paciente</button>
        <button id ="bm4" >Medico</button>
        <button id ="bp5" >Paciente</button>
        <button id ="bm5" >Medico</button>
        <form action="volver.jsp"> 
            <input type = "submit" value = "Volver">
            <textarea name = "rp1" id="rp1" cols="200" rows="200" value = "<%out.print(p1);%> " hidden><%out.print(p1);%></textarea>
            <textarea name = "rm1" id="rm1" cols="200" rows="200" value = "<%out.print(m1);%> " hidden><%out.print(m1);%></textarea>
            <textarea name = "rp2" id="rp2" cols="200" rows="200" value = "<%out.print(p2);%> " hidden><%out.print(p2);%></textarea>
            <textarea name = "rm2" id="rm2" cols="200" rows="200" value = "<%out.print(m2);%> " hidden><%out.print(m2);%></textarea>
            <textarea name = "rp3" id="rp3" cols="200" rows="200" value = "<%out.print(p3);%> " hidden><%out.print(p3);%></textarea>
            <textarea name = "rm3" id="rm3" cols="200" rows="200" value = "<%out.print(m3);%> " hidden><%out.print(m3);%></textarea>
            <textarea name = "rp4" id="rp4" cols="200" rows="200" value = "<%out.print(p4);%> " hidden><%out.print(p4);%></textarea>
            <textarea name = "rm4" id="rm4" cols="200" rows="200" value = "<%out.print(m4);%> " hidden><%out.print(m4);%></textarea>
            <textarea name = "rp5" id="rp5" cols="200" rows="200" value = "<%out.print(p5);%> " hidden><%out.print(p5);%></textarea>
            <textarea name = "rm5" id="rm5" cols="200" rows="200" value = "<%out.print(m5);%> " hidden><%out.print(m5);%></textarea><br/>             
        </form><br/>         
        <script>
            var e =0;
            $('#bp1').hide();
            $('#bm1').hide();
            $('#bp2').hide();
            $('#bm2').hide();
            $('#bp3').hide();
            $('#bm3').hide();
            $('#bp4').hide();
            $('#bm4').hide();
            $('#bp5').hide();
            $('#bm5').hide();
            $('#rp1').hide();
            $('#rm1').hide();
            $('#rp2').hide();
            $('#rm2').hide();
            $('#rp3').hide();
            $('#rm3').hide();
            $('#rp4').hide();
            $('#rm4').hide();
            $('#rp5').hide();
            $('#rm5').hide();
            $(function(){
                $('#1').click(function(){
                    $('#bp1').show();
                    $('#bm1').show();
                    $('#bp2').hide();
                    $('#bm2').hide();
                    $('#bp3').hide();
                    $('#bm3').hide();
                    $('#bp4').hide();
                    $('#bm4').hide();
                    $('#bp5').hide();
                    $('#bm5').hide();
                    $('#rp').hide();
                    $('#rm').hide();
                });                
            });
            $(function(){
                $('#2').click(function(){
                    $('#bp1').hide();
                    $('#bm1').hide();
                    $('#bp2').show();
                    $('#bm2').show();
                    $('#bp3').hide();
                    $('#bm3').hide();
                    $('#bp4').hide();
                    $('#bm4').hide();
                    $('#bp5').hide();
                    $('#bm5').hide();
                    $('#rp1').hide();
                    $('#rm1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#3').click(function(){
                    $('#bp1').hide();
                    $('#bm1').hide();
                    $('#bp2').hide();
                    $('#bm2').hide();
                    $('#bp3').show();
                    $('#bm3').show();
                    $('#bp4').hide();
                    $('#bm4').hide();
                    $('#bp5').hide();
                    $('#bm5').hide();
                    $('#rp1').hide();
                    $('#rm1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#4').click(function(){
                    $('#bp1').hide();
                    $('#bm1').hide();
                    $('#bp2').hide();
                    $('#bm2').hide();
                    $('#bp3').hide();
                    $('#bm3').hide();
                    $('#bp4').show();
                    $('#bm4').show();
                    $('#bp5').hide();
                    $('#bm5').hide();
                    $('#rp1').hide();
                    $('#rm1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#5').click(function(){
                    $('#bp1').hide();
                    $('#bm1').hide();
                    $('#bp2').hide();
                    $('#bm2').hide();
                    $('#bp3').hide();
                    $('#bm3').hide();
                    $('#bp4').hide();
                    $('#bm4').hide();
                    $('#bp5').show();
                    $('#bm5').show();
                    $('#rp1').hide();
                    $('#rm1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bp1').click(function(){
                    $('#rp1').show();
                    $('#rm1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bm1').click(function(){
                    $('#rp1').hide();
                    $('#rm1').show();                    
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bp2').click(function(){
                    $('#rm1').hide();
                    $('#rp1').hide();
                    $('#rp2').show();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bm2').click(function(){
                    $('#rm1').hide();
                    $('#rp1').hide();
                    $('#rp2').hide();
                    $('#rm2').show();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bp3').click(function(){
                    $('#rm1').hide();
                    $('#rp1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').show();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bm3').click(function(){
                    $('#rm1').hide();
                    $('#rp1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').show();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bp4').click(function(){
                    $('#rm1').hide();
                    $('#rp1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').show();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bm4').click(function(){
                    $('#rm1').hide();
                    $('#rp1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').show();
                    $('#rp5').hide();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bp5').click(function(){
                    $('#rm1').hide();
                    $('#rp1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').show();
                    $('#rm5').hide();
                });                
            });
            $(function(){
                $('#bm5').click(function(){
                    $('#rm1').hide();
                    $('#rp1').hide();
                    $('#rp2').hide();
                    $('#rm2').hide();
                    $('#rp3').hide();
                    $('#rm3').hide();
                    $('#rp4').hide();
                    $('#rm4').hide();
                    $('#rp5').hide();
                    $('#rm5').show();
                });                
            });            
        </script>
        <p id ="r" ></p>
        <script>
            $('#r').hide();
            $(function(){
                $('#bp').click(function(){
                    $('#r').show();                   
                });                
            });
        </script> 
    </body>
</html>
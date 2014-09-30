<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/horoscopos.css"/>
<!-- Latest compiled and minified JavaScript -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>proyecto Horoscopos</title>
    </head>
    <body>
        <div id="zodiaco">
            <h1>Horóscopos</h1>
            <h3>Selecciona tu signo zodiacal</h3>
            <select name="signo" id="signo">
                <option>Virgo</option>
                <option>Libra</option>
                <option>Sagitario</option>
                <option>Capricornio</option>
                <option>Piscis</option>
                <option>Leo</option>
                <option>Cancer</option>
                <option>Acuario</option>
                <option>Geminis</option>
                <option>Tauro</option>
                <option>Aries</option>
                <option>Escorpion</option>
            </select>
            <br>
            <input id="boton" type="submit" class="btn" value="Ver horóscopo">
            <div id="resultado">
                
            </div>
           </div>
        <script>
            $(document).ready(function(){
             $("#boton").click(function(){
                $.ajax({
                    method:'get',
                    url:'horoscopo',
                    success:function(res){
                         $("#resultado").html(res);  
                    }
                });
              
             });
            });
        </script>
    </body>
</html>

<!DOCTYPE html>
<html>
<head>
<title>UFG INF PW 2015/2</title>
</head>
<body>
  <h1>UFG INF PW 2015/2</h1>
<br>
<% out.print(new java.util.Date()); %>
<br><br>
<form>

Nome: <br><input type="text" name="nome">
<br>
Altura: <br><input type="text" name="altura">
<br>
Peso: <br><input type="text" name="peso">
<br>
<br>

Qual seu sexo?
<br>
    <select name="Sexo"> 
    <option value="ho">Homem</option> 
    <option value="mu">Mulher</option> 
   </select>
 
   <br>
   <br>
<input type="submit">

</form>

Seu nome e:<br>
<%
String Nome = request.getParameter("nome");
out.print(Nome);
%>
<br>

Sua altura e:<br>
<%
String Altura = request.getParameter("altura"); 
Altura = Altura == null ? "0" : Altura;
float altura = Float.parseFloat(Altura);
out.print(Altura);
%>
<br>
Seu peso e:<br>
<%
String Peso = request.getParameter("peso"); 
Peso = Peso == null ? "0" : Peso;
float peso = Float.parseFloat(Peso);
out.print(Peso);
%>
<br>
Seu IMC e:<br>
<%

double imc = (peso) / ((altura) * (altura));
out.print(imc);
 %>

</body>
</html>
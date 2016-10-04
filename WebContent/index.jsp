<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<h1>Bem vindo ao nosso gerenciador de empresas! </h1>

<c:if test = "${not empty usuarioLogado}">
Logado como : ${usuarioLogado.email }
</c:if>

<form action="executa" method="POST">
	<input type="hidden" name="tarefa" value="NovaEmpresa" />
	Nome: <input type="text" name="nome">
	<input type="submit" value="Enviar">
</form>
<form action="login" method="POST">
    Email: <input type="email" name="email" /><br />
    Senha: <input type="password" name="senha" /><br />
    <input type="submit" value="Login" />
</form>
<form action="executa" method="POST">
<input type="hidden" name="tarefa" value="Logout" />
<input type="submit" value="Sair" />

</form>

</body>
</html>
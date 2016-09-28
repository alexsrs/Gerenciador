package br.com.alura.gerenciador.web;
import javax.servlet.http.Cookie;

public class Cookies {
	public final Cookie[] cookies;
	public Cookies(Cookie[] cookies){
		this.cookies = cookies;
		// TODO to-generated constructor stub
	}
	public Cookie buscaUsuarioLogado() {
		if (cookies == null) return null;
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("usuario.logado")) {
				return cookie;
			}
		}
		return null;
	}
}

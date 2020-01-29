package com.company.servlets;

import com.company.beans.Auteur;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Test")
public class Test extends HttpServlet {

    public void init() throws ServletException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        request.setAttribute("name", name);

        String age = request.getParameter("age");
        request.setAttribute("age", age);

        String[] noms = {"Jean", "Pierre", "Paul"};
        request.setAttribute("noms", noms);

        String message = "Au revoir!";
        request.setAttribute("variable", message);
        request.setAttribute("heure", "jour");

        Auteur auteur = new Auteur();

        auteur.setPrenom("Mathieu");
        auteur.setNom("Nebra");
        auteur.setActif(false);

        request.setAttribute("auteur", auteur);

        this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
    }

}

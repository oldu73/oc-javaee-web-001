package com.company;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Test")
public class Test extends HttpServlet {

    private String message1;
    private String message2;

    public void init() throws ServletException {

        message1 = "Hello, world!";
        message2 = "Cómo estás ?";

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        out.print("<h1>" + message1 + "</h1>");
        out.print("<h2>" + message2 + "</h2>");

    }

}

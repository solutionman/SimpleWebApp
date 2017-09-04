package com.simplewebapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//  localhost:8080/a/b/c
//  127.0.0.1:8080/web/app

@WebServlet(name = "SimpleServlet", urlPatterns = {"/a/b/c", "/web/app"})
public class SimpleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Hello simple web application</h1>");
        out.println("let's try some calculations: </br>");
        out.println("<input type='text' size='20'></input>");
        int a = 1;
        int b = 2;
        int c = a + b;
        out.println("</br>");
        out.printf("a = %d, b = %d </br>", a, b);
        out.println();
        out.printf("c = %d  (a + b)", c);
        out.flush();
    }
}



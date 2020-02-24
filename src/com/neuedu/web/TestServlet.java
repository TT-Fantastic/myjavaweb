package com.neuedu.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*System.out.println(request.getRequestURI());
        System.out.println(request.getRequestURL());
        System.out.println(request.getScheme());
        System.out.println(request.getServerName());
        System.out.println(request.getServletPath());
        System.out.println(request.getContextPath());
        System.out.println(request.getServerPort());*/
        PrintWriter pw=response.getWriter();
        response.setContentType("text/html");
        String id=request.getParameter("id");
        System.out.println("id="+id);
        String name=request.getParameter("name");
        System.out.println("name="+name);
        pw.println("<html><head></head><body><div style='width:200px;height:300px;background:#00ff00'></div></body></html>");
    }
}

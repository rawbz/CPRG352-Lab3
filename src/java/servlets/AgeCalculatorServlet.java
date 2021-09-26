/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rmjba
 */
public class ageCalcServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                //have servlet call JSP to be loaded 
                getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request,response);
 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                //capture age 
                String age = request.getParameter("age");

                //set attribute
                request.setAttribute("client_age", age);

                if(age == null){
                    //dispay error message
                    request.setAttribute("message", "You must give your current age");

                    //display form again JSP
                    getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request,response);

                    return;
                }
    }


}

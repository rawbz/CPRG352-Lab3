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
public class ArithmeticCalculatorServlet extends HttpServlet {
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                //have message show -- when no input 
                request.setAttribute("results", "---");
                //load arithmetic jsp
                getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request,response);
                
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

                //capture numbers
                String first = request.getParameter("first_number");
                String second = request.getParameter("second_number");

                //set attributes
                request.setAttribute("firstNum", first);
                request.setAttribute("secondNum", second); 

                //check if input is invalid
                if(first == null || second == null || first.equals("") || second.equals("")){
                //have message show -- when no input 
                request.setAttribute("results", "Invalid");

                getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request,response);
                
                return;
                }


                getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request,response);
                

    }

   
}

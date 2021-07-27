/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PartnerModule.RequestPartners;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


/**
 *
 * @author iamsm
 */
public class viewRequestsController extends HttpServlet {
    viewRequestsDAO dao = new viewRequestsDAO();
    
    /**
     
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
            
      
        HttpSession session = request.getSession();
        String UserEmail = (String)session.getAttribute("email");
        System.out.println(UserEmail);
        UserModel[] ReqUsers = dao.getRequests(UserEmail).clone();
        
        
        request.setAttribute("ReqList",ReqUsers);
        RequestDispatcher rd = request.getRequestDispatcher("requests.jsp");
        if(rd != null)
        {
            System.out.println("FORWARDED");
            rd.forward(request,response);
        }
        else
            System.out.println("RD is NULL");
        
        out.close();
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    }
}

package com.parking.techlane.servlets;
import com.parking.techlane.common.UserDto;
import com.parking.techlane.ejb.CarsBean;
import com.parking.techlane.ejb.ProductsBean;
import com.parking.techlane.ejb.UserBean;
import jakarta.inject.Inject;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
@ServletSecurity(value = @HttpConstraint(rolesAllowed = {"WRITE_CARS"}))
@WebServlet(name = "AddProduct", value = "/AddProduct")
public class AddProduct extends HttpServlet{
    @Inject
    UserBean usersBean;
    @Inject
    ProductsBean productsBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<UserDto> users=usersBean.findAllUsers();
        request.setAttribute("users",users);
        request.getRequestDispatcher("/WEB-INF/pages/addProduct.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        String description=request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        String image = request.getParameter("image");
        productsBean.createProduct(name,description, price, image);
        response.sendRedirect(request.getContextPath()+"/Products");

    }

}

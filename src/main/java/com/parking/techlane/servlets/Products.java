package com.parking.techlane.servlets;

import com.parking.techlane.common.ProductDto;
import com.parking.techlane.ejb.ProductsBean;
import jakarta.annotation.security.DeclareRoles;
import jakarta.inject.Inject;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@DeclareRoles({"READ_CARS,WRITE_CARS"})
@ServletSecurity(value = @HttpConstraint(rolesAllowed = {"READ_CARS"}),
        httpMethodConstraints = {@HttpMethodConstraint(value = "POST", rolesAllowed =
                {"WRITE_CARS"})})
@WebServlet(name = "Products", value = "/Products")
public class Products extends HttpServlet {
    @Inject
    ProductsBean productsBean;
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductDto> products=productsBean.findAllProducts();
        request.setAttribute("products",products);
        request.setAttribute("numberOfFreeParkingSpots", 10);
        request.getRequestDispatcher("/products.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] productIdsAsString=request.getParameterValues("product_ids");
        if(productIdsAsString!=null){
            List<Long> productIds=new ArrayList<>();
            for(String productIdAsString :productIdsAsString){
                productIds.add(Long.parseLong(productIdAsString));
            }
            productsBean.deleteProductsByIds(productIds);
        }
        response.sendRedirect(request.getContextPath()+"/Products");
    }
}

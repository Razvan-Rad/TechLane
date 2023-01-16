package com.parking.techlane.ejb;

import com.parking.techlane.common.ProductDto;
import com.parking.techlane.entities.Product;
import com.parking.techlane.entities.User;
import jakarta.ejb.EJBException;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Stateless

public class ProductsBean {
    private static final Logger LOG = Logger.getLogger(ProductsBean.class.getName());
    @PersistenceContext
    EntityManager entityManager;

    public List<ProductDto> findAllProducts() {
        LOG.info("findAllProducts");
        try {
            TypedQuery<Product> typedQuery =
                    entityManager.createQuery("SELECT c FROM Product c", Product.class);
            List<Product> products = typedQuery.getResultList();
            return copyProductsToDto(products);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }

    private List<ProductDto> copyProductsToDto(List<Product> products) {
        List<ProductDto> productDto;
        productDto=products
                .stream()
                .map(x->new ProductDto(x.getId(),x.getLicensePlate(),x.getParkingSpot(),x.getOwner().getUsername())).collect(Collectors.toList());
        return productDto;
    }

    public ProductDto findById(Long productId){

        Product product=entityManager.find(Product.class,productId);
        ProductDto products=new ProductDto(product.getId(),product.getLicensePlate(), product.getParkingSpot(), product.getOwner().getUsername()) ;

        return products;

    }

    public void deleteProductsByIds(Collection<Long> productIds){
        LOG.info("deleteProductsByIds");
        for(Long productId:productIds){
            Product product=entityManager.find(Product.class,productId);
            entityManager.remove(product);
        }
    }

}

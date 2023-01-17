package com.parking.techlane.ejb;

import com.parking.techlane.common.ProductDto;
import com.parking.techlane.entities.Car;
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
                .map(x->new ProductDto(x.getId(),x.getName(),x.getDescription(),x.getPrice(),x.getImage() )).collect(Collectors.toList());
        return productDto;
    }

    public ProductDto findById(Long productId){

        Product product=entityManager.find(Product.class,productId);
        ProductDto products=new ProductDto(product.getId(),product.getName(), product.getDescription(), product.getPrice(), product.getImage()) ;

        return products;

    }

    public void createProduct(String name,String description, double price, String image){
        LOG.info("createProduct");
        Product product = new Product();
        product.setName("abc");
        product.setDescription(description);
        product.setPrice(price);
        product.setImage(image);
        entityManager.persist(product);
    }

    public void deleteProductsByIds(Collection<Long> productIds){
        LOG.info("deleteProductsByIds");
        for(Long productId:productIds){
            Product product=entityManager.find(Product.class,productId);
            entityManager.remove(product);
        }
    }

}

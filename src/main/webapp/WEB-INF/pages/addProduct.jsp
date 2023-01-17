<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Add Product">
    <h1>Add Product</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddProduct">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Name is required.
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="description">Description</label>
                <input type="text" class="form-control" id="description" name="description" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Description is required.
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="price">Price</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Price is required.
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="image">Enter an image link</label>
                <input type="text" class="form-control" id="image" name="image" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Image is required.
                </div>
            </div>
        </div>

        </div>
        <div >
            <button class=" btn btn-primary btn-lg" type="submit">Add Product</button>
        </div>

    </form>

</t:pageTemplate>
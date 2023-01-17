<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:formTemplate pageTitle="Add Product">
    <h1>Add Product</h1>
    <form class="login" novalidate method="POST" action="${pageContext.request.contextPath}/AddProduct">
        <div class="row">
            <div class="form-group">
                <label for="name"></label>
                <input type="text"  id="name" name="name" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Name is required.
                </div>

            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label for="description"></label>
                <input type="text"  id="description" name="description" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Description is required.
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group">
                <label for="price"></label>
                <input type="text"  id="price" name="price" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Price is required.
                </div>
            </div>
        </div>


        </div>
        <div >
            <button class=" btn" type="submit">Add Product</button>
            <div class="main"> <a href="${pageContext.request.contextPath}/index.jsp">HOME</a></div>
        </div>

    </form>

</t:formTemplate>
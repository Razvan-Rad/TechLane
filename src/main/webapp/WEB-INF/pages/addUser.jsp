<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:formTemplate pageTitle="Add User">
  <h1>Add Car</h1>
  <form class="login" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">
    <div class="row">
      <div class="form-group">
        <label for="username"></label>
        <input type="text" id="username" name="username" placeholder="" value="" required>
        <div class="invalid-feedback">
          Username is required.
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-group">
        <label for="email"></label>
        <input type="text"  id="email" name="email" placeholder="" value="" required>
        <div class="invalid-feedback">
          Email is required.
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-group">
        <label for="password"></label>
        <input type="password"  id="password" name="password" placeholder="" value="" required>
        <div class="invalid-feedback">
          Password is required.
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-group">
        <label for="user_groups" >Groups</label>
        <select class="custom-select d-block w-100" id="user_groups" name="user_groups" multiple>

          <c:forEach var="user_group" items="${userGroups}" varStatus="status">
            <option value="${user_group}">${user_group}</option>
          </c:forEach>
        </select>

        <label for="balance"></label>
        <input type="text"  id="balance" name="balance" placeholder="" value="" required>
        <div class="invalid-feedback">
          Balance is required.
        </div>
      </div>
    </div>


        <div class="invalid-feedback">
          Please select valid user groups.
        </div>
      </div>
    </div>
    <button class="btn" type="submit">Submit</button>
    <div class="main"> <a href="${pageContext.request.contextPath}/index.jsp">Go Home</a></div>
  </form>

</t:formTemplate>
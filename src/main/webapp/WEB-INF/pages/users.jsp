<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Users">
  <h1>Users</h1>
  <form method="POST" action="${pageContext.request.contextPath}/Users">
  <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
  <a class=" btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddUser">
    Add User
  </a>
    <button class="btn btn-danger" type="submit">Invoice </button>
  </c:if>

  <div class ="container text-center">
    <c:forEach var="users" items="${users}">

      <div class="row">
        <div class="col">
          <input type="checkbox" name="user_ids" value="${users.id}"/>
        </div>
        <div class="col">
            ${users.username}
        </div>
        <div class="col">
            ${users.email}
        </div>
        <div class="col">
            ${users.balance}
        </div>
      </div>
    </c:forEach>

  </div>
  </form>
  <c:if test="${not empty invoices}">
    <h2>Invoices</h2>
    <c:forEach var="username" items="${invoices}" varStatus="status">
      ${status.index+1}.${username}
      <br/>
    </c:forEach>
  </c:if>
</t:pageTemplate>
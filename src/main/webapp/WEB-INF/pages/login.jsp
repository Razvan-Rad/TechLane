<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:formTemplate pageTitle="Login">

    <c:if test="${message!=null}">
        <div class="alert alert-warning" role="alert">
            ${message}
        </div>
    </c:if>

    <div class="login ">
        <h1>Login</h1>
    <form method="POST" action="j_security_check">
        <div class="form-group">
            <input type="text"  name="j_username"   required  />
        <label  >Username</label>

        </div>
        <div class="form-group">
            <input type="password"  name="j_password" required  />
            <label>Password</label>
        </div>
            <input type="submit" value="Sign In" class="btn">
        <div class="main">Dont have an account?  <a href="${pageContext.request.contextPath}/register.jsp">register now</a></div>
        <div class="main"> <a href="${pageContext.request.contextPath}/index.jsp">Go Home</a></div>
    </form>
    </div>
</t:formTemplate>


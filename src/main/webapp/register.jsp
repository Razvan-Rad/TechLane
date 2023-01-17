<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:formTemplate pageTitle="Login">

  <c:if test="${message!=null}">
    <div class="alert alert-warning" role="alert">
        ${message}
    </div>
  </c:if>

  <div class="login">


    <h1>Register</h1>
    <form method="POST" action="j_security_check">
      <div class="form-group">
        <input type="text" id="username" name="j_username"   required autofocus />
        <label for="username" >Username</label>
      </div>
      <div class="form-group">
        <input type="email" id="email" name="j_email"   required autofocus />
        <label for="email" >Email</label>
      </div>
      <div class="form-group">
        <input type="password" id="password" name="j_password"   required autofocus />
        <label for="password" >Password</label>
      </div>
      <div class="form-group">
        <input type="password" id="cpassword" name="j_cpassword"   required autofocus />
        <label for="cpassword" >Confirm Password</label>
      </div>
      <input type="submit" value="Register" class="btn">
      <div class="main">Have an account?  <a href="${pageContext.request.contextPath}/Login">Sign in now</a></div>
      <div class="main"> <a href="${pageContext.request.contextPath}/index.jsp">Go Home</a></div>
    </form>

  </div>
  </body>
</t:formTemplate>

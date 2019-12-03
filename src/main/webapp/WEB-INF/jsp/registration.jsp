<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Creation utilisateur</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.0/css/bootstrap.min.css"/>
</head>
<body>
<div class="container">
    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="name">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="name" class="form-control" placeholder="Name" autofocus="true"></form:input>
                <form:errors path="name"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="firstName">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="firstName" class="form-control" placeholder="First name"></form:input>
                <form:errors path="firstName"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="login">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="login" class="form-control" placeholder="Login"></form:input>
                <form:errors path="login"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
    </form:form>
</div>
</body>
</html>
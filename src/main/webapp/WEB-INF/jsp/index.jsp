<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.0/css/bootstrap.min.css" />
</head>
<body>
<div class="container">
    <form method="POST" action="login" class="form-signin">
        <h2 class="form-heading">Log in</h2>
        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="login" type="text" class="form-control" placeholder="Login"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="/registration">Create an account</a></h4>
        </div>
    </form>
</div>
<script type="text/javascript" src="webjars/bootstrap/4.3.0/js/bootstrap.min.js"></script>
</body>
</html>
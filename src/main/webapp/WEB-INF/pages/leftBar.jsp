<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<p><a href="/news">News</a></p>

<p><a href="/archive">Personal Archive</a></p>

<c:if test="${empty sessionScope.user}">
    <p><a href="/signin">Sign in</a></p>

    <p><a href="/registration">Register</a></p>
</c:if>

<c:if test="${not empty sessionScope.user}">
    <p><a href="/signout">Sign out</a> (${sessionScope.user.login}) </p>
</c:if>
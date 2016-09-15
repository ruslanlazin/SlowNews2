<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty sessionScope.user}">
    <span class=><a href="//lazin.pp.ua">Other projects</a></span>
    <span class="nav-right"><a href="/registration">Register</a></span>
    <span class="nav-right"><a href="/signin">Sign in </a></span>
</c:if>

<c:if test="${not empty sessionScope.user}">
    <span class=><a href="//lazin.pp.ua">Other projects</a></span>
    <span class="nav-right"><a href="/signout">Sign out</a></span>
    <span class="nav-right">Signed in as <b>${sessionScope.user.login}</b> </span>
</c:if>



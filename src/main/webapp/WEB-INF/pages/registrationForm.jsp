<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page session="true" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>SlowNews.Lazin.pp.ua</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css"/>
    <script defer type="text/javascript" src="/js/reg-form-validator.js"></script>
</head>

<body>
<div class="curved wrapper">
    <div class="navigation curved container">
        <span><a href="//lazin.pp.ua">Other projects</a></span>

    </div>

    <div class="left curved container">
        <c:import url="leftBar.jsp"></c:import>
    </div>

    <div class="center curved container">
        <h2>Sign Up</h2>

        <h4>${message}</h4>

        <form action="" id="reg-form" method="post">
            <table class="reg-table">
                <tr>
                    <td><b>Username*:</b></td>
                    <td><input id="Username" name="Username" type="text" maxlength="60" class="reg-input-long"/></td>
                </tr>
                <tr>
                    <td><b>Password*:</b></td>
                    <td><input id="Password" name="Password" type="password" maxlength="60" class="reg-input-long"/>
                    </td>
                </tr>
                <tr>
                    <td><b>First, Last Name:</b></td>
                    <td>
                        <input id="FirstName" name="FirstName" type="text" maxlength="60" class="reg-input-short"/>
                        <input id="LastName" name="LastName" type="text" maxlength="60" class="reg-input-short"/>
                    </td>
                </tr>
                <tr>
                    <td><b>Email address*:</b></td>
                    <td><input id="Email" name="Email" type="text" maxlength="60"
                               class="reg-input-long"/></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <br>
                        * - required fields. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <input id="Submit" class="input-button" name="Submit" type="submit" value=" Submit "/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <div class="right curved container">
        <c:import url="rightBar.html"></c:import>
    </div>

    <div class=" footer curved container">
        <c:import url="footer.html"></c:import>
    </div>
</div>

<p class="copyright">Copyright &copy;2015-${year}. All Rights Reserved</p>

</body>

</html>

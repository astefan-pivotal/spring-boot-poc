<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>ADMIN MVC Login Page</title>
    <c:url value="/css/reset.css" var="reset" />
    <link href="${reset}" rel="stylesheet"/>
    <c:url value="/css/default.css" var="default" />
    <link href="${default}" rel="stylesheet"/>
    <c:url value="/css/formStyle.css" var="form" />
    <link href="${form}" rel="stylesheet"/>
    <script type="text/javascript">
        function setFocusOn(compId) {
            document.getElementById(compId).focus();
        }
    </script>
</head>
<body onload="setFocusOn('j_username')">
<!--Header-->
<div class="wrapper">
    <div class="header">
        <!--Logo-->
        <div class="logo">
            <h1> <a href="#" title="EG-Spring +">EG-Spring +</a> </h1>
        </div>
        <!--//Logo-->

        <div class="clear"></div>
        <!--Menu-->
        <div class="menu"> </div>
        <!--//Menu-->
    </div>
</div>
<!--//Header-->

<!--Content-->
<div class="contentBg">
    <div class="wrapper">
        <div class="content">
            <!-- main content   -->
            <c:url value="/j_spring_security_check" var="url" />
            <form id="loginForm" action="${url}" method='POST'>
                <div class="loginBox">
                    <h1>Login <span></span></h1>
                    <div class="loginBody">
                        <p>Fill out the form below to login</p>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <c:if test="${not empty param.loginError}">
                                <tr>
                                    <td colspan="2">
                                        <div style="color: red;">
                                            Your login attempt was not successful, try again.<br /> Caused
                                            : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                                        </div>
                                    </td>
                                </tr>
                            </c:if>
                            <tr>
                                <td width="44%"><label>User Name:*</label></td>
                                <td width="16%">
                                    <input maxlength="30" type="text" id="j_username"
                                           name="j_username" />
                                </td>
                            </tr>
                            <tr>
                                <td>Password:*</td>
                                <td>
                                    <input maxlength="30" type="password" id="j_password"
                                           name="j_password" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><input name="submit" id="submitButton" style="display: none"
                                           type="submit" />
                                    <input type="button" title="Search" onclick="document.getElementById('submitButton').click();return false;"
                                           class="logInButton" value="Login"/>
                                </td>
                            </tr>
                            </tbody></table>
            </form>
        </div>
    </div>
    <br />
</div>
<!--Content-->


<!--Footer-->
<div class="wrapper">
    <div id="footer">

        <div class="left w80P">

            <!--Footer links-->
            <div class="copyRight">
                <p>&copy; 2013 The Emirates Group.</p>
            </div>
            <!--//Footer links-->
        </div>
        <div class="rightLogoFooter">
            <h3 class="theEmiratesGroup">The Emirates Group</h3>
        </div>
    </div>
</div>
<!--//Footer-->

</body>

</body>
</html>
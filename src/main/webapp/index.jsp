<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome page</title>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
    </head>
    <body>
        <h1>Welcome to Sem 2</h1>

        <form name="Hent" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="Hent">
            Hent bøger:<br>
            <input type="submit" value="Hent">
        </form>

        <form name="Ny" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="Opret">
            Opret ny bog:<br>
            Title:<br>
            <input type="text" name="Title" >
            <br>
            Forfatter:<br>
            <input type="text" name="Forfatter" >
            <br>
            Udgivelses År:<br>
            <input type="text" name="UdgivelsesÅr">
            <br>
            <input type="submit" value="Opret">
        </form>

        <table>
            <tr>
                <th>BogID</th>
                <th>Tittle</th>
                <th>Forfatter</th>
                <th>Udgivelses år</th>
            </tr>

            <c:forEach var="bog" items="${requestScope.bogListe}">
            <tr>
                <th>${bog.id}</th>
                <th>${bog.navn}</th>
                <th>${bog.forfatter}</th>
                <th>${bog.udgivelsesÅr}r</th>
            </tr>

            </c:forEach>
        </table>




<!--
        <table>
            <tr><td>Login</td>
                <td>
                    <form name="login" action="FrontController" method="POST">
                        <input type="hidden" name="taget" value="login">
                        Email:<br>
                        <input type="text" name="email" value="someone@nowhere.com">
                        <br>
                        Password:<br>
                        <input type="password" name="password" value="sesam">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </td>
                <td>Or Register</td>
                <td>
                    <form name="register" action="FrontController" method="POST">
                        <input type="hidden" name="taget" value="register">
                        Email:<br>
                        <input type="text" name="email" value="someone@nowhere.com">
                        <br>
                        Password:<br>
                        <input type="password" name="password1" value="sesam">
                        <br>
                        Retype Password:<br>
                        <input type="password" name="password2" value="sesam">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </td>
            </tr>
        </table>
->

<%--        Bare lige se I har en ide om hvad vi forslå I ikke gør ! det hedder scpript lets --%>
<%--        <% String error = (String) request.getAttribute( "error");--%>
<%--           if ( error != null) { --%>
<%--               out.println("<H2>Error!!</h2>");--%>
<%--               out.println(error);--%>
<%--           }--%>
<%--        %>--%>

        <c:if test = "${requestScope.error!= null}" >

           <h2>Error ! </h2>
            ${requestScope.error}

        </c:if>
    </body>
</html>

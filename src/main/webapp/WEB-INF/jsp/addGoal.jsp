<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Add Goal</title>
</head>

<style>
    .error {
        color: #ff0000;
    }

    .errorblock {
        color: #000;
        background-color: #ffEEEE;
        border: 3px solid #ff0000;
        padding: 8px;
        margin: 16px;
    }
</style>

<body>
    <form:form commandName="goal">
        <form:errors path="*" cssClass="errorblock" element="div"/>
        <table>
            <tr>
                <td>Enter Minutes:</td>
                <td><form:input path="minutes" cssErrorClass="error"/></td><!--Looks for a method within 'goal' named minutes-->
                <td><form:errors path="minutes" cssClass="error"/></td>
            </tr>
            <tr>
                <td colspan="3">
                    <input type="submit" value="Enter Goal minutes"/>
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>

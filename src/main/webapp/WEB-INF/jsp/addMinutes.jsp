<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Minutes Page</title>

    <script type="text/javascript" src="jquery-3.4.1.js"></script>

    <!--This script pulls our exposed JSON data through the GET method findAllActivities in our MinutesController (which calls ExerciseService)-->
    <script type="text/javascript">
        $(document).ready(
            function() {
                $.getJSON('<spring:url value="activities.json"/>', {
                        ajax : 'true'
                    }, function(data){
                        var html = '<option value="">--Please select one--</option>';
                        var len = data.length;
                        for (var i = 0; i < len; i++) {
                            html += '<option value="' + data[i].desc + '">'
                                    + data[i].desc + '</option>';
                        }
                        html += '</option>';

                        $('#activities').html(html);
                });
            });

    </script>
</head>
<body>
<h1>Add Minutes Exercised</h1>

Language : <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>

<form:form commandName="exercise"><!--Binds the 'exercise' data back into the MinutesController-->
    <table>
        <tr>
            <td><spring:message code="goal.text" /></td><!--Uses the spring tags library, and message in the messages.properties file we created-->
            <td><form:input path="minutes"/></td>
            <td>
                <form:select id="activities" path="activity"></form:select>
            </td>
        </tr>
        <tr>
            <td colspan="3"><!--colspan attribute defines the number of columns a cell should span-->
                <input type="submit" value="Enter Exercise"/>
            </td>
        </tr>
    </table>
</form:form>

<h1>Our goal for the day is: ${goal.minutes}</h1><!--refers to the goal attribute stored in the session-->
</body>
</html>

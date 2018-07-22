<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <script src="resources/js/jquery.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                $("#demo1").click(function () {
                    $.ajax({
                        type: 'GET',
                        url: "${pageContext.request.contextPath}/demo1",
                        success: function (data, textStatus, jqXHR) {
                            $("#result").html(data);
                        }
                    });
                });
                
                $("#demo2").click(function () {
                var fullName = $("#fullName").val();
                    $.ajax({
                        type: 'GET',
                        url: "${pageContext.request.contextPath}/demo2/"+fullName,
                        success: function (data, textStatus, jqXHR) {
                            $("#resul2").html(data);
                        }
                    });
                });
            });
        </script>
    </head>

    <body>
        <h1>${pageContext.request.contextPath}</h1>
        <h1>${pageContext.servletContext.contextPath}</h1>
        <fieldset>
            <legend>Demo 1</legend>
            <input type="button" value="demo" id="demo1"/>
            <span id="result"></span>
        </fieldset>
        
        <fieldset>
            <legend>Demo 2</legend>
            <input type="text" id="fullName"/><input type="button" value="demo2" id="demo2"/>
            <span id="resul2"></span>
        </fieldset>
    </body>
</html>

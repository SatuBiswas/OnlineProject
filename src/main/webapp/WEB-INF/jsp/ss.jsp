<%-- 
    Document   : ss
    Created on : Jul 19, 2018, 12:29:26 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="resources/js/jquery.js" type="text/javascript"></script>

        <script>
            $(function () {
                $('button[type=submit]').click(function () {
                    var empdate = $("empdate").val();
                    $.ajax({
                        type: 'POST',
                        url: "saveEmployee",
                        data: $('form[name=employeeForm]').serialize(),
                        success: function (data, textStatus, jqXHR) {
                            console.log("return result : " + data);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log("error : "+jqXHR);
                        }
                    });

                });
            });
        </script>
    </head>
    <body>
        <form action="javascript:void(0)" method="post" name="employeeForm">
            <table>
                <tr>
                    <td>First Name</td>
                    <td><input name="firstName" type="text" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input name="lastName" type="text" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input name="email" type="text" /></td>
                </tr>
                <tr>
                    <td>Designation</td>
                    <td><input name="designation" type="text" /></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><input name="empdate" type="date" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit">Submit</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
